/* 
 * File:   Kernel.cpp
 * Author: Akela1101
 * 
 * Created on 10 Январь 2011 г., 10:09
 */

#include "Enti.h"
#include "MapFull.h"
#include "Player.h"

#include "Kernel.h"


namespace Strategix
{

Kernel::Kernel(const string& mapName)
{
	mapFull.reset(new MapFull(mapName));
}

void Kernel::AddPlayer(s_p<Player> player)
{
	player->mapLocal = mapFull->CreateMapLocal(player.get());
	players.push_back(player);
}

void Kernel::Start()
{
	// @#~ Check for kernel consistence, run initial functions
	
	// Players' initialization
	for (s_p<Player>& player : players)
	{
		player->Start();
	}
	
	// @#~
	players[0]->AddEnti(s_p<Enti>(new Enti(&*players[0]->techTree->Node("Spher_Worker"), MapCoord(4, 6))));
	players[0]->AddEnti(s_p<Enti>(new Enti(&*players[0]->techTree->Node("Spher_Worker"), MapCoord(6, 7))));
	players[0]->AddEnti(s_p<Enti>(new Enti(&*players[0]->techTree->Node("Spher_Worker"), MapCoord(6, 6))));
	
	// @#~
	players[0]->AddResource(KernelBase::GS().MakeResource("gold", 0)); // badly refreshing
}

void Kernel::Tick(const float seconds)
{
	for (s_p<Player>& player : players)
	{
		player->Tick(seconds);
	}
}

}