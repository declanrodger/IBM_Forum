601,100
602,"SYS_Create_Chore_Info_Master"
562,"NULL"
586,
585,
564,
565,"eRBRCa0z1EtB:9QzP_vA:\2p0@<q45FjYkL:NrLDArrkgYZp@x[Yt@X`;Ca_PmIZWUtZ^i_^XN42C4hhMxS]lJt11Xlb0H3oBL2gNW2;zV1hNovd^Hk:HzdkBboV5J`?q^^AFhn?[JF>]km^w@hpsxe?5IzdKu?VFd5lSHu5Bnw7WTs[?7owpXvd0^hmhnH45l5Lwr<H"
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
560,0
561,0
590,0
637,0
577,0
578,0
579,0
580,0
581,0
582,0
603,0
572,41

#****Begin: Generated Statements***
#****End: Generated Statements****

#------------------------------------------------------------------------------------------------------------------------
# P1/ Set Constants
#------------------------------------------------------------------------------------------------------------------------

cCubeName = 'SYS_Chore_Info';
cDimChore = '}Chores';
cDimMeasures = cCubeName | '_Measures';
cFormatInt = 'b:#,##0;(#,##0)CO|0|Y';
cProcChild = 'SYS_Create_Chore_Info_Child';

#------------------------------------------------------------------------------------------------------------------------
# P2/ Create Cube
#------------------------------------------------------------------------------------------------------------------------

# Create Measures Dimension
If ( DimensionExists ( cDimMeasures ) = 0 );
	Dimensioncreate ( cDimMeasures );
EndIf;

# Add Measures Elements
DimensionElementInsert ( cDimMeasures, '', 'Active', 'N' );
DimensionElementInsert ( cDimMeasures, '', 'Multiple Commit Mode', 'N' );
DimensionElementInsert ( cDimMeasures, '', 'Start Date', 'S' );
DimensionElementInsert ( cDimMeasures, '', 'Start Time', 'S' );
DimensionElementInsert ( cDimMeasures, '', 'Frequency', 'N' );
DimensionElementInsert ( cDimMeasures, '', 'Process Count', 'N' );

AttrInsert ( cDimMeasures, '', 'Format', 'S' );

# Create Cube
If ( CubeExists ( cCubeName ) = 0 );
	CubeCreate ( cCubeName, cDimChore, cDimMeasures );
Else;
	CubeClearData ( cCubeName );
EndIf;


573,3

#****Begin: Generated Statements***
#****End: Generated Statements****
574,3

#****Begin: Generated Statements***
#****End: Generated Statements****
575,25

#****Begin: Generated Statements***
#****End: Generated Statements****

#------------------------------------------------------------------------------------------------------------------------
# E1/ Loop and Run Sub process for each Chore
#------------------------------------------------------------------------------------------------------------------------

iCount = 1;
iMax = DimSiz ( cDimChore );
While ( iCount <= iMax );
	sChoreName = DimNm ( cDimChore, iCount );
	If ( FileExists ( './' | sChoreName | '.cho' ) = 1 );
		ExecuteProcess ( cProcChild, 'psChoreName', sChoreName );
	EndIf;
	iCount = iCount + 1;
End;

#------------------------------------------------------------------------------------------------------------------------
# E2/ Set Formats
#------------------------------------------------------------------------------------------------------------------------

AttrPutS ( cFormatInt, cDimMeasures, 'Active', 'Format' );
AttrPutS ( cFormatInt, cDimMeasures, 'Multiple Commit Mode', 'Format' );
AttrPutS ( cFormatInt, cDimMeasures, 'Frequency', 'Format' );
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
