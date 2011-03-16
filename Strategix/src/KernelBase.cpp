/* 
 * File:   KernelBase.cpp
 * Author: Akela1101
 * 
 * Created on 13 Февраль 2010 г., 23:19
 */

#include "TechTreesBuilderFromXml.h"
#include "Log.h"

#include <boost/filesystem.hpp>

#include "Nya.hpp"
#include "KernelBase.h"

using namespace std;
using namespace boost;
using namespace Strategix;
namespace fs = boost::filesystem;


KernelBase::KernelBase()
{
	// Build Tech Trees
	TechTreesBuilderFromXml ttBuilder;
	ttBuilder.Build(&techTrees);	
}

KernelBase::~KernelBase()
{
}

// Checking directory with Maps
sh_p<vector<string> > KernelBase::GetMapNames()
{
	sh_p<vector<string> > mapNames(new vector<string>());

	fs::recursive_directory_iterator it("Maps/"), eod;
	foreach( const fs::path &p, std::make_pair(it, eod) )
	{
		if( fs::is_regular_file(p) && fs::extension(p) == ".map" )
		{
			mapNames->push_back(p.stem());
		}
	}
	return mapNames;
}

// Checking TechTree
sh_p<vector<string> > KernelBase::GetRaceNames()
{
	sh_p<vector<string> > raceNames(new vector<string>());

	foreach( const TechTreesType::value_type &tt_pair, techTrees )
	{
		raceNames->push_back(tt_pair.second->raceName);
	}
	return raceNames;
}