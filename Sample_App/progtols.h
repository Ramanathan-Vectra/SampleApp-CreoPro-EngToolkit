#pragma once
#include "header.h"
class ProGtols
{
public:
	ProError ProGtolCreate();
	ProError CreateSimpleGtolWithLeader(ProMdl mdl, ProSurface surface, ProPoint3d pointOnSurface);
};

