#ifndef _GAME_H
#define _GAME_H

#include <Strategix_Forward.h>


namespace strx
{
class Game : boost::noncopyable
{
public:
	virtual ~Game() = default;
	
	virtual void Start() = 0;
	virtual void PlayerAdded(Player* player) = 0;
};

}
#endif