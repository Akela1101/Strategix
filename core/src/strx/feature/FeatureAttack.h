#ifndef _FEATUREATTACK_H
#define    _FEATUREATTACK_H

#include "Feature.h"
#include "Interfaces.h"


namespace strx
{
class FeatureAttack : public Feature, public ICommand
{
protected:
	const FeatureInfoAttack* featureInfoAttack; // Link to tree

private:
	s_p<Enti> target;
	HpType hitProgress;

public:
	FeatureAttack(const FeatureInfo* featureInfo, Enti* enti);
	
	bool Attack(s_p<Enti> target);
	virtual bool Tick(float seconds);
	virtual void Stop();
	virtual void OnComplete(bool isComplete); // Moving Complete
};
}

#endif    /* _FEATUREATTACK_H */

