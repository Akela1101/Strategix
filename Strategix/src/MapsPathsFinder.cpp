/* 
 * File:   MapsPathsFinder.cpp
 * Author: Akela1101
 * 
 * Created on 24 Март 2011 г., 17:14
 */

#include "MapsPath.h"
#include "Map.h"

#include "MapsPathsFinder.h"


namespace Strategix
{

MapsPathsFinder::MapsPathsFinder(const Map &map)
	:
	map(map)
{
}

MapsPathsFinder::~MapsPathsFinder()
{
}

sh_p<MapsPath> MapsPathsFinder::FindPath(const MapCoord from, const MapCoord till)
{
	sh_p<MapsPath> mapsPath(new MapsPath);

	if( from.x == till.x && from.y == till.y || !IsAccessible(till) )
		return mapsPath;

	static const MapCoord around[8] =
	{
		MapCoord(-1,  1), MapCoord( 0, 1), MapCoord( 1, 1),
		MapCoord(-1,  0), MapCoord( 1,-1), MapCoord( 1, 0),
		MapCoord(-1, -1), MapCoord( 0,-1) // <^ done for ability % 2
	};

	list<sh_p<CellPrice> > opened, closed;
	sh_p<CellPrice> current = sh_p<CellPrice>(new CellPrice(from, 0, 0, 0));

	opened.push_back(current);

	while( !opened.empty() )
	{
		list<sh_p<CellPrice> > ::iterator it_min, it = opened.begin();
		it_min = it++; // it_min == begin, it == begin + 1
		Price F_min = (*it_min)->F;

		for( ; it != opened.end(); ++it )
		{
			if( F_min > (*it)->F )
			{
				it_min = it;
				F_min = (*it)->F;
			}
		}
		current = *it_min;	
		opened.erase(it_min);	
		closed.push_front(current);

		if( current->mc == till ) // Way's found !
		{
			// Return list
			for( CellPrice *cellPrice = current.get(); cellPrice; cellPrice = cellPrice->parent )
			{
				mapsPath->PushFront(cellPrice->mc);
			}
			mapsPath->PickFront(); // remove first
			break;
		}

		for( int i = 0; i < 8; ++i )
		{
			MapCoord checking_mc = current->mc + around[i];

			if( map.IsCell(checking_mc) && !GetByCoord(closed, checking_mc).get() && IsAccessible(checking_mc) )
			{
				// map(current->mc) @#~
				Price new_G = current->G + ((i % 2) ? 10 : 14) * map(current->mc).retard; // sqrt(2)*10, 10

				sh_p<CellPrice> openedCell = GetByCoord(opened, checking_mc);
				if( !openedCell.get() )
				{
					const int new_H = Distance(checking_mc, till);
					openedCell.reset(new CellPrice(checking_mc, current.get(), new_G, new_H));
					opened.push_back(openedCell);
				}
				else
				{
					// in open list & mark < old mark
					if( openedCell->G > new_G )
					{
						openedCell->parent = current.get();
						openedCell->G = new_G;
						openedCell->F = openedCell->G + openedCell->H;
					}
				}
			}
		}
	}

	return mapsPath;
}

//void OObjectUnit::AddWayTo_Debug(Vector3 &pos)
//{
//	static MapCoord oldMapCoord = MapCoord(-1, -1);
//	MapCoord newMapCoord = GetMapCoord(pos);
//
//	typedef std::deque< MapCoord> MapCoordDeque;
//	static MapCoordDeque *saved_moveList;
//
//	// First time mouse click => Draw path
//	if( oldMapCoord != newMapCoord )
//	{
//		oldMapCoord = newMapCoord;
//
//		typedef std::list< Map::Cell*> CellList;
//		CellList *p_closed = 0;
//
//		// !!!!!!!!!!!!!!!
//		// saved_moveList =  kernel->GetMap().FindPath_Debug(mapCoord, newMapCoord, p_closed);
//
//		//
//		labelVector.clear();
//		labelVector.reserve(p_closed->size());
//
//		for( CellList::iterator at = p_closed->begin(); at != p_closed->end(); ++at)
//		{
//			std::stringstream title;
//			title << "\n" << (*at)->G << " + " << (*at)->H << "\n = " << (*at)->F ;
//			sh_p<OObjectLabel> labelUnit(new OObjectLabel((*at)->mc, title.str().c_str()));
//
//			if( saved_moveList->end() != find(saved_moveList->begin(), saved_moveList->end(), (*at)->mc) )
//				labelUnit->SetColor(ColourValue(1.0, 1.0, 1.0, 1.0));
//			else
//				labelUnit->SetColor(ColourValue(5.0, 0.0, 0.8, 1.0));
//
//			labelVector.push_back(labelUnit);
//		}
//
//		delete p_closed;
//	}
//	else // Second time mouse click => Go
//	{
//		if( moveList != saved_moveList )
//			delete moveList;
//		moveList = saved_moveList;
//	}
//}


}
