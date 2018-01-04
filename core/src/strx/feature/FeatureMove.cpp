#include <strx/entity/Entity.h>
#include <strx/entity/EntitySlot.h>
#include <strx/feature/FeatureInfo.h>
#include <strx/map/Map.h>
#include <strx/map/MapPath.h>
#include <strx/player/Player.h>

#include "FeatureMove.h"


namespace strx
{

FeatureMove::FeatureMove(const FeatureInfo* featureInfo, Entity* entity)
        : Feature(entity)
        , featureInfoMove(dynamic_cast<const FeatureInfoMove*>(featureInfo))
        , speed(featureInfoMove->speed)
        , next(entity->GetCoord())
{}

FeatureMove::~FeatureMove() = default;

void FeatureMove::Move(MapCoord coord, float radius, Feature* mover)
{
	this->coord = coord;
	this->radius = radius;
	this->mover = mover;

	RebuildPath();
	distance = 0;
	terrainQuality = 0;

	entity->AssignTask(this);
}

void FeatureMove::Tick(float seconds)
{
	distance -= seconds * speed * terrainQuality;
	bool isStop = distance <= 0 && !NextPoint();

	RealCoord newCoord = distance > 0 ? next - direction * distance : next;
	entity->SetCoord(newCoord);

	if (isStop)
	{
		entity->AssignTask(nullptr);
		if (mover) mover->Completed(path->IsWhole());
	}
}

void FeatureMove::Stop() {}

bool FeatureMove::NextPoint()
{
	if (path->IsEmpty()) return false;

	RebuildPath();
	if (path->IsEmpty()) return false;

	next = path->TakeNext();
	if (!entity->SetMapCoord(next)) nya_throw << "The first point of the new path is occupied.";

	auto current = entity->GetCoord();
	Player& player = entity->GetPlayer();

	RealCoord delta = (RealCoord)next - current;
	direction = delta.Norm();
	distance += delta.Len();
	terrainQuality = 0.5 * (player.GetTerrain(current)->quality + player.GetTerrain(next)->quality);
	return true;
}

void FeatureMove::RebuildPath()
{
	path = entity->GetPlayer().FindPath(entity->GetMapCoord(), coord, radius);
	if (distance > 0)
	{
		// first point shouldn't be removed, if it's still moving there
		path->AddPoint(entity->GetMapCoord());
	}
}

}
