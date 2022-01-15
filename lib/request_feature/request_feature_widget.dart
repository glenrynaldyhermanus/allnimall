import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class RequestFeatureWidget extends StatefulWidget {
  const RequestFeatureWidget({Key key}) : super(key: key);

  @override
  _RequestFeatureWidgetState createState() => _RequestFeatureWidgetState();
}

class _RequestFeatureWidgetState extends State<RequestFeatureWidget> {
  TextEditingController nameFieldController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    nameFieldController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.tertiaryColor,
        iconTheme: IconThemeData(color: FlutterFlowTheme.primaryColor),
        automaticallyImplyLeading: true,
        title: Text(
          'The App Is Yours',
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
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'What would you want us to build?',
                style: FlutterFlowTheme.subtitle2,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                child: TextFormField(
                  controller: nameFieldController,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'I want Allnimall adds...',
                    hintStyle: FlutterFlowTheme.subtitle1,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.secondaryColor,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.secondaryColor,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(16, 24, 0, 24),
                  ),
                  style: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Lexend Deca',
                    color: Color(0xFF2B343A),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    final featureRequestsCreateData =
                        createFeatureRequestsRecordData(
                      userUid: currentUserReference,
                      feedback: nameFieldController.text,
                      createdAt: getCurrentTimestamp,
                      status: 'new',
                      response: 'Waiting list',
                    );
                    await FeatureRequestsRecord.collection
                        .doc()
                        .set(featureRequestsCreateData);
                  },
                  text: 'Send my request',
                  options: FFButtonOptions(
                    width: 210,
                    height: 60,
                    color: FlutterFlowTheme.primaryColor,
                    textStyle: FlutterFlowTheme.title3.override(
                      fontFamily: 'RockoUltra',
                      color: FlutterFlowTheme.tertiaryColor,
                      useGoogleFonts: false,
                    ),
                    elevation: 3,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 8,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: StreamBuilder<List<FeatureRequestsRecord>>(
                  stream: queryFeatureRequestsRecord(
                    queryBuilder: (featureRequestsRecord) =>
                        featureRequestsRecord.where('user_uid',
                            isEqualTo: currentUserReference),
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
                    List<FeatureRequestsRecord>
                        columnFeatureRequestsRecordList = snapshot.data;
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children:
                          List.generate(columnFeatureRequestsRecordList.length,
                              (columnIndex) {
                        final columnFeatureRequestsRecord =
                            columnFeatureRequestsRecordList[columnIndex];
                        return Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 72,
                                height: 72,
                                decoration: BoxDecoration(
                                  color: Color(0xFFD8D1F2),
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Icon(
                                    Icons.build,
                                    color: FlutterFlowTheme.primaryColor,
                                    size: 32,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 0, 0, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        columnFeatureRequestsRecord.feedback,
                                        style:
                                            FlutterFlowTheme.subtitle1.override(
                                          fontFamily: 'Cabin',
                                          color: FlutterFlowTheme.primaryColor,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        dateTimeFormat(
                                            'relative',
                                            columnFeatureRequestsRecord
                                                .createdAt),
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Cabin',
                                          fontSize: 12,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 8, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              columnFeatureRequestsRecord
                                                  .response,
                                              style: FlutterFlowTheme.bodyText1
                                                  .override(
                                                fontFamily: 'Cabin',
                                                color: FlutterFlowTheme
                                                    .secondaryColor,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
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
            ],
          ),
        ),
      ),
    );
  }
}
