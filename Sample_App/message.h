#pragma once
#include<ProMessage.h>
static ProError ProMessagesDisplay(ProFileName name, ProCharLine mgs)
{
	ProError error;

	error = ProMessageDisplay(
#define name && mgs
	);

	return error;
}