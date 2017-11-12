#include "MapFull.h"
#include "MapsPathsFinder.h"
#include "Player.h"

#include "MapLocal.h"


namespace Strategix
{

MapLocal::MapLocal(Player* player, MapFull* mapFull)
		: Map(*static_cast<Map*>(mapFull))
		, player(player)
		, mapFull(mapFull)
		, initialPosition(mapFull->GetInitialPostion(player->GetPlayerNumber()))
		, pathsFinder(new MapsPathsFinder(*this)) {}

s_p<MapsPath> MapLocal::FindPath(MapCoord from, MapCoord till) const
{
	return pathsFinder->FindPath(from, till);
}

float MapLocal::PickResource(s_p<MapResource>& mapResource, float amount)
{
	return mapFull->PickResource(mapResource, amount);
}

void MapLocal::RemoveMapResource(s_p<MapResource>& mapResource)
{
	player->RemoveMapResource(mapResource);
	GetCell(mapResource->GetCoord()).mapResource.reset();
}

}
