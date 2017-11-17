#include "CoordStructs.h"


namespace strategix
{
#ifndef MSCC // GCC

template<>
MapCoord::operator RealCoord() const
{
	return RealCoord(0.5 + x, 0.5 + y); // Center object in cell
}

#endif

}
