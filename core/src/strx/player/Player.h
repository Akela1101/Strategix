#ifndef _PLAYER_H
#define    _PLAYER_H

#include <Strategix_Forward.h>


namespace strx
{

class Player : boost::noncopyable
{
	PlayerSlot* slot = nullptr;    /// Callback class
	const string name;
	const PlayerType type;
	const int id;
	const string raceName;
	
	vector<u_p<Entity>> entities;  /// owned enties
	u_p<Resources> resources;      /// available resources amount
	u_p<Map> map;                  /// local map for current player
	const TechTree& techTree;      /// link to tech tree
	vector<Entity*> entisToRemove; /// entis removed at the end of Tick

public:
	Player(const string& name, PlayerType type, int id, const string& raceName, u_p<Map> map);
	~Player();
	
	const string& GetName() const { return name; }
	PlayerType GetType() const { return type; }
	int GetId() const { return id; }
	Map& GetMap() const { return *map; }
	const TechTree& GetTechTree() const { return techTree; }
	void SetSlot(PlayerSlot* slot);
	
	void Start();
	void Tick(float seconds);
	void AddEnti(Entity* entity);
	void RemoveEnti(Entity* entity);
	void AddResource(const Resource& deltaResource);
	Entity* FindCollector(MapCoord coord);
};
}

#endif    /* _PLAYER_H */

