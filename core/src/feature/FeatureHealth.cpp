#include "entity/Enti.h"
#include "entity/EntiSlot.h"
#include "FeatureInfo.h"

#include "player/Player.h"


namespace strategix
{

FeatureHealth::FeatureHealth(const FeatureInfo* featureInfo, Enti* enti)
		: Feature(enti), featureInfoHealth(dynamic_cast<const FeatureInfoHealth*>(featureInfo))
		, hp(featureInfoHealth->hp)
{}

bool FeatureHealth::Tick(float seconds)
{
	// regeneration. if integer value changes -> OnHpChange
	return true;
}

void FeatureHealth::Stop()
{
	// Stop Regeneration
}

const HpType FeatureHealth::GetMaxHp() const
{
	return featureInfoHealth->hp;
}

bool FeatureHealth::HpChange(HpType deltaHp)
{
	hp += deltaHp;
	
	if (hp <= 0)
	{
		// Dead
		hp = 0;
		enti->GetSlot().OnHpChange();
		enti->GetPlayer().QueueEntiToRemove(enti);
		return false;
	}
	else if (hp > featureInfoHealth->hp)
	{
		// Stop healing|repair
		hp = featureInfoHealth->hp;
	}
	enti->GetSlot().OnHpChange();
	return true;
}

}
