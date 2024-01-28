#include "progtols.h"
#include <ProGtol.h>
#include <ProSurface.h>
#include <ProAnnotation.h>
#include <ProAnnotationElem.h>
#include <ProNote.h>
ProError ProAttachTagToGtol(ProMdl model);
ProError visiteAction(ProSetDatumTag tag, ProError error, ProAppData data);
ProError ProMyAttachments(ProGtolAttach attach);

ProError ProGtols::ProGtolCreate()
{
	ProError mError;
	ProMdl mModel;
	ProGtol mGtol;
	ProGtolAttach mGtolAttach;
	ProGtolType mGtolType = PROGTOLTYPE_SURFACE;
	std::string log;
	ProBoolean mBool;
	ProGtolleader* mLeader = NULL;


	mError = ProMdlCurrentGet(&mModel);
	(mError != PRO_TK_NO_ERROR) ? log = "error found!" : log = "success";

	mError = ProGtolAttachAlloc(mModel, &mGtolAttach);
	(mError != PRO_TK_NO_ERROR) ? log = "error found!" : log = "success";

	mError = ProMyAttachments(mGtolAttach);
	(mError != PRO_TK_NO_ERROR) ? log = "error found!" : log = "success";

	mError = ProMdlGtolCreate(mModel, mGtolType, mGtolAttach, L"Chetan", &mGtol);
	(mError != PRO_TK_NO_ERROR) ? log = "error found!" : log = "success";

	mError = ProAnnotationIsShown(&mGtol, NULL, &mBool);
	(mError != PRO_TK_NO_ERROR) ? log = "error found!" : log = "success";

	if (!mBool)
	{
		mError = ProAnnotationShow(&mGtol, NULL, NULL);
	}
	mError = ProAttachTagToGtol(mModel);

	return mError;
}

ProError ProMyAttachments(ProGtolAttach attach)
{
	std::string log;
	ProError mError;
	int mTotalNumberOfSelection;
	ProSelection* mSelection;
	ProVector mVector = { 1, 1, 1 };
	ProAnnotationPlane mPlane;
	ProMouseButton mMouseBtn;
	ProPoint3d mPoint;
	ProGtolleader* mLeader = nullptr;
	ProGtolLeaderAttachType mGtolLeaderAttachType = PRO_GTOL_NORMAL_LEADER;
	ProLeaderType mLeaderType = PROLEADERTYPE_ARROWHEAD;
	

	mError = ProSelect("datum", 1, nullptr, nullptr, nullptr, nullptr, &mSelection, &mTotalNumberOfSelection);
	(mError != PRO_TK_NO_ERROR) ? log = "error found!" : log = "success";

	mError = ProSelectionUnhighlight(mSelection[0]);
	(mError != PRO_TK_NO_ERROR) ? log = "error found!" : log = "success";

	mError = ProAnnotationplaneCreate(mSelection[0], mVector, &mPlane);
	(mError != PRO_TK_NO_ERROR) ? log = "error found!" : log = "success";


	if (mSelection[0] != nullptr)
	{
		mTotalNumberOfSelection = NULL;
	}

	mError = ProSelect("surface", 1, nullptr, nullptr, nullptr, nullptr, &mSelection, &mTotalNumberOfSelection);
	(mError != PRO_TK_NO_ERROR) ? log = "error found!" : log = "success";

	mError = ProMousePickGet(PRO_LEFT_BUTTON, &mMouseBtn, mPoint);
	(mError != PRO_TK_NO_ERROR) ? log = "error found!" : log = "success";

	mError = ProArrayAlloc(mTotalNumberOfSelection, sizeof(ProGtolleader), 1, (ProArray*)&mLeader);
	(mError != PRO_TK_NO_ERROR) ? log = "error found!" : log = "success";

	mError = ProGtolleaderAlloc(mLeaderType, mSelection[0], &mLeader[0]);
	(mError != PRO_TK_NO_ERROR) ? log = "error found!" : log = "success";

	mError = ProGtolAttachLeadersSet(attach, &mPlane, mGtolLeaderAttachType, mLeader, mPoint);
	(mError != PRO_TK_NO_ERROR) ? log = "error found!" : log = "success";

	mError = ProSelectionUnhighlight(mSelection[0]);
	(mError != PRO_TK_NO_ERROR) ? log = "error found!" : log = "success";

	if (mLeader != nullptr)
	{
		mError = ProGtolleaderFree(&mLeader[0]);
		mError = ProArrayFree((ProArray*)&mLeader);
	}
	return mError;
}

ProError ProAttachTagToGtol(ProMdl model)
{
	ProError mError;
	ProSelection* mGtolSelection;
	ProSetDatumTag mTag;
	int mTotalSelection;
	ProBoolean isTagSelected;
	wchar_t mLables[] = { L'A', L'B', L'C', L'D', L'E', L'F', L'G', L'H', 
		L'I', L'J', L'K', L'L', L'M', L'N', L'O', L'P', L'Q', L'R', L'S', L'T',
		L'U', L'V', L'W', L'X', L'Y', L'Z' };

	mError = ProSolidSetdatumtagVisit((ProSolid)model, (ProSetdatumtagVisitAction)visiteAction, NULL, NULL);

	mError = ProSelect("gtol", 1, nullptr, nullptr, nullptr, nullptr, &mGtolSelection, &mTotalSelection);

	mError = ProMdlSetdatumtagCreate(model, mGtolSelection[0], NULL, L"A", &mTag);

	mError = ProAnnotationIsShown(&mTag, nullptr, &isTagSelected);

	if (!isTagSelected)
	{
		mError = ProAnnotationShow(&mTag, nullptr, nullptr);
	}

	return mError;
}

ProError visiteAction(ProSetDatumTag tag, ProError error, ProAppData data)
{
	return PRO_TK_NO_ERROR;
}