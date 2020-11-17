601,100
602,"SYS_Create_Chore_Info_Child"
562,"CHARACTERDELIMITED"
586,"./test1.cho"
585,"C:\Users\DeclanRodger\Downloads\test2.cho"
564,
565,"e8J_;a:aL=:ghhbqe8J5aoKA;0vRN\vda=L5mMZti>sTTz;]mb\\53MvHtQwdPoPTgu^8SMK9bcK?vnWaN?\qWMe6q5FlVkb>TvP0X799uwWEGN2;ctdD_C[P[^eqL7bkxzWs=iO=r<[=k^vUm[Rp8L7[VbL5h4F8HYWY@[>>jBZ;ROpQ`zl3cgcPnhn6K35tOe0]N@2"
559,1
928,0
593,
594,
595,
597,
598,
596,
800,
801,
566,0
567,","
588,"."
589,","
568,""""
570,
571,
569,0
592,0
599,1000
560,1
psChoreName
561,1
2
590,1
psChoreName,""
637,1
psChoreName,""
577,2
vsKey
vsInfo
578,2
2
2
579,2
1
2
580,2
0
0
581,2
0
0
582,3
VarType=32ColType=827
VarType=32ColType=827
IgnoredInputVarName=V3VarType=32ColType=1165
603,0
572,18

#****Begin: Generated Statements***
#****End: Generated Statements****


#------------------------------------------------------------------------------------------------------------------------
# P1/ Set Constants
#------------------------------------------------------------------------------------------------------------------------

cCubeName = 'SYS_Chore_Info';


#------------------------------------------------------------------------------------------------------------------------
# P2/ Set Data Source
#------------------------------------------------------------------------------------------------------------------------

DataSourceType = 'CharacterDelimited';
DataSourceNameForServer = './' | psChoreName | '.cho';
573,3

#****Begin: Generated Statements***
#****End: Generated Statements****
574,36

#****Begin: Generated Statements***
#****End: Generated Statements****


#------------------------------------------------------------------------------------------------------------------------
# D1/ Find and Populate Details
#------------------------------------------------------------------------------------------------------------------------

If ( vsKey @= '530' );
	# This key is for Start Date and Time
	sDate = SubSt ( vsInfo, 1, 8 );
	sTime = SubSt ( vsInfo, 9, 6 );

	CellPutS ( sDate, cCubeName, psChoreName, 'Start Date' );
	CellPutS ( sTime, cCubeName, psChoreName, 'Start Time' );

ElseIf ( vsKey @= '531' );
	# This key is for frequency DDDHHMMSS
	nFreqDay = StringToNumber ( SubSt ( vsInfo, 1, 3 ) ) * 86400;
	nFreqHour = StringToNumber ( SubSt ( vsInfo, 4, 2 ) ) * 3600;
	nFreqMin = StringToNumber ( SubSt ( vsInfo, 6, 2 ) ) * 60;
	nFreqSec = StringToNumber ( SubSt ( vsInfo, 8, 2 ) );
	nFreqTot = nFreqDay + nFreqHour + nFreqMin + nFreqSec;

	CellPutN ( nFreqTot, cCubeName, psChoreName, 'Frequency' );

ElseIf ( vsKey @= '533' );
	# This key is an active flag
	CellPutN ( StringToNumber ( vsInfo ), cCubeName, psChoreName, 'Active' );

ElseIf ( vskey @= '1405' );
	# This key is multiple commit mode
	CellPutN ( StringToNumber ( vsInfo ), cCubeName, psChoreName, 'Multiple Commit Mode' );

EndIf;
575,3

#****Begin: Generated Statements***
#****End: Generated Statements****
576,CubeAction=1511DataAction=1503CubeLogChanges=0
930,0
638,1
804,0
1217,0
900,
901,
902,
938,0
937,
936,
935,
934,
932,0
933,0
903,
906,
929,
907,
908,
904,0
905,0
909,0
911,
912,
913,
914,
915,
916,
917,0
918,1
919,0
920,50000
921,""
922,""
923,0
924,""
925,""
926,""
927,""
