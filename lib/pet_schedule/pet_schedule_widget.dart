import '../add_schedule/add_schedule_widget.dart';
import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class PetScheduleWidget extends StatefulWidget {
  const PetScheduleWidget({
    Key key,
    this.petRef,
  }) : super(key: key);

  final DocumentReference petRef;

  @override
  _PetScheduleWidgetState createState() => _PetScheduleWidgetState();
}

class _PetScheduleWidgetState extends State<PetScheduleWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.tertiaryColor,
        iconTheme: IconThemeData(color: FlutterFlowTheme.primaryColor),
        automaticallyImplyLeading: true,
        title: Text(
          'Schedule',
          style: FlutterFlowTheme.title3.override(
            fontFamily: 'RockoUltra',
            color: FlutterFlowTheme.primaryColor,
            useGoogleFonts: false,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.tertiaryColor,
      floatingActionButton: Visibility(
        visible: functions.isLoggedIn(currentUserReference) ?? true,
        child: FloatingActionButton.extended(
          onPressed: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddScheduleWidget(
                  petRef: widget.petRef,
                ),
              ),
            );
          },
          backgroundColor: FlutterFlowTheme.secondaryColor,
          icon: Icon(
            Icons.add_rounded,
          ),
          elevation: 8,
          label: Text(
            'Add',
            style: FlutterFlowTheme.title3.override(
              fontFamily: 'RockoUltra',
              color: FlutterFlowTheme.tertiaryColor,
              useGoogleFonts: false,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: StreamBuilder<List<PetSchedulesRecord>>(
          stream: queryPetSchedulesRecord(
            queryBuilder: (petSchedulesRecord) => petSchedulesRecord
                .where('pet_uid', isEqualTo: widget.petRef)
                .where('scheduled_at',
                    isGreaterThanOrEqualTo: getCurrentTimestamp)
                .orderBy('scheduled_at'),
          ),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: SpinKitRipple(
                    color: FlutterFlowTheme.primaryColor,
                    size: 50,
                  ),
                ),
              );
            }
            List<PetSchedulesRecord> columnPetSchedulesRecordList =
                snapshot.data;
            return Column(
              mainAxisSize: MainAxisSize.max,
              children: List.generate(columnPetSchedulesRecordList.length,
                  (columnIndex) {
                final columnPetSchedulesRecord =
                    columnPetSchedulesRecordList[columnIndex];
                return Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24, 8, 24, 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            dateTimeFormat(
                                'MEd', columnPetSchedulesRecord.scheduledAt),
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Cabin',
                              color: Color(0xFF7F7F7F),
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            dateTimeFormat(
                                'Hm', columnPetSchedulesRecord.scheduledAt),
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Cabin',
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFEEEEEE),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12, 12, 12, 12),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: Image.network(
                                          'https://i.ibb.co/wJWJgWW/3958832.jpg',
                                          width: 48,
                                          height: 48,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 0, 0, 0),
                                            child: Text(
                                              columnPetSchedulesRecord.name,
                                              style: FlutterFlowTheme.subtitle1,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 0, 0, 0),
                                            child: Text(
                                              columnPetSchedulesRecord
                                                  .description,
                                              style: FlutterFlowTheme.bodyText1,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            columnPetSchedulesRecord.duration
                                                .toString(),
                                            style: FlutterFlowTheme.subtitle1
                                                .override(
                                              fontFamily: 'Cabin',
                                              color: Color(0xFF343434),
                                            ),
                                          ),
                                          Text(
                                            columnPetSchedulesRecord
                                                .durationUnit,
                                            style: FlutterFlowTheme.bodyText1,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
            );
          },
        ),
      ),
    );
  }
}
