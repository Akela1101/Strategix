#ifndef _PLAYER_H
#define    _PLAYER_H

#include <Strategix_Forward.h>


namespace strx
{

class Player
{
	friend class FeatureCollect;  // @#~ temporary
	
	PlayerSlot* slot;             // Callback class
	const string name;
	const PlayerType type;
	const int id;
	const string raceName;
	
	vector<u_p<Enti>> entis;      // owned enties
	u_p<Resources> resources;     // available resources amount
	u_p<Map> map;                 // local map for current player
	const TechTree& techTree;     // link to tech tree
	vector<Enti*> entisToRemove;  // entis removed at the end of Tick

public:
	Player(const string& name, PlayerType type, int id, const string& raceName, u_p<Map> map);
	~Player();
	Player(const Player& orig) = delete;
	Player& operator=(const Player& _c) = delete;
	
	const string& GetName() const { return name; }
	PlayerType GetType() const { return type; }
	int GetId() const { return id; }
	Map& GetMap() const { return *map; }
	const TechTree& GetTechTree() const { return techTree; }
	
	void Start();
	void Tick(float seconds);
	void AddEnti(Enti* enti);
	void RemoveEnti(Enti* enti);
	bool AddResource(const Resource& deltaResource);
	
	// signals
};
}

#endif    /* _PLAYER_H */

