#include "header.h"
ProError toolkitBtn_start();
uiCmdAccessState dimAdvisorStartAccess(uiCmdAccessMode access_mode);
uiCmdAccessState dimAdvisorStopAccess(uiCmdAccessMode /*access_mode*/);
ProFileName  message_file, files;
ProError ptc_rc;

ProError toolkitBtn_start()
{
	ProError error = PRO_TK_NO_ERROR;
	ProGtols gtols;
	error = gtols.ProGtolCreate();
	return error;
}

extern "C" int user_initialize(int argc, char *argv[], char *proe_vsn, char *build)
{
	uiCmdCmdId   start_cmd_id;
	ProStringToWstring(message_file, "usermsgs2.txt");
	ProStringToWstring(files, "usermsgs2.txt");
	//ptc_rc = ProRibbonDefinitionfileLoad(L"toolkitribbonui.rbn");
	ptc_rc = ProCmdIconSet(start_cmd_id, "test_app_icon.png");
	ptc_rc = ProCmdActionAdd("Sample_Creo4_Application", (uiCmdCmdActFn)toolkitBtn_start, uiProe2ndImmediate, dimAdvisorStartAccess, PRO_B_TRUE, PRO_B_TRUE, &start_cmd_id);
	ptc_rc = ProCmdDesignate(start_cmd_id, "Creo_Sample", "Creo_Sample_Help", "Creo_Sample_Help", message_file);
	//ptc_rc = ProMessageDisplay(files, "MESG_Select_Surf_Ref", "my name is chetan");
	return (0);
}


extern "C" void user_terminate()
{
	
}

uiCmdAccessState dimAdvisorStartAccess(uiCmdAccessMode access_mode)
{
	access_mode;
	return ACCESS_AVAILABLE;
}

uiCmdAccessState dimAdvisorStopAccess(uiCmdAccessMode access_mode)
{
	access_mode;
	return ACCESS_UNAVAILABLE;
}


