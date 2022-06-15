import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AddScheduleWidget extends StatefulWidget {
  const AddScheduleWidget({
    Key key,
    this.petRef,
  }) : super(key: key);

  final DocumentReference petRef;

  @override
  _AddScheduleWidgetState createState() => _AddScheduleWidgetState();
}

class _AddScheduleWidgetState extends State<AddScheduleWidget> {
  DateTime datePicked;
  TextEditingController descFieldController;
  TextEditingController nameFieldController;
  String weightUnitSelectionValue;
  TextEditingController weightFieldController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    descFieldController = TextEditingController();
    nameFieldController = TextEditingController();
    weightFieldController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<PetsRecord>(
      future: PetsRecord.getDocumentOnce(widget.petRef),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: SpinKitRipple(
                color: FlutterFlowTheme.of(context).primaryColor,
                size: 50,
              ),
            ),
          );
        }
        final addSchedulePetsRecord = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
            iconTheme:
                IconThemeData(color: FlutterFlowTheme.of(context).primaryColor),
            automaticallyImplyLeading: true,
            title: Text(
              FFLocalizations.of(context).getText(
                '5bkm1g5u' /* Create Plan */,
              ),
              style: FlutterFlowTheme.of(context).title3.override(
                    fontFamily: 'RockoUltra',
                    color: FlutterFlowTheme.of(context).primaryColor,
                    useGoogleFonts: false,
                  ),
            ),
            actions: [],
            centerTitle: true,
            elevation: 0,
          ),
          backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
          body: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(32, 20, 32, 20),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        TextFormField(
                          controller: nameFieldController,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: FFLocalizations.of(context).getText(
                              'ovw55ner' /* Name */,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color:
                                    FlutterFlowTheme.of(context).secondaryColor,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color:
                                    FlutterFlowTheme.of(context).secondaryColor,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(16, 24, 16, 24),
                          ),
                          style: FlutterFlowTheme.of(context).subtitle1,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                          child: TextFormField(
                            controller: descFieldController,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: FFLocalizations.of(context).getText(
                                'sy541fzx' /* Desciption */,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryColor,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryColor,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  16, 24, 16, 24),
                            ),
                            style: FlutterFlowTheme.of(context).subtitle1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                          child: InkWell(
                            onTap: () async {
                              await DatePicker.showDateTimePicker(
                                context,
                                showTitleActions: true,
                                onConfirm: (date) {
                                  setState(() => datePicked = date);
                                },
                                currentTime: getCurrentTimestamp,
                                minTime: DateTime(0, 0, 0),
                                locale: LocaleType.values.firstWhere(
                                  (l) =>
                                      l.name ==
                                      FFLocalizations.of(context).languageCode,
                                  orElse: null,
                                ),
                              );
                            },
                            child: Material(
                              color: Colors.transparent,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Container(
                                width: double.infinity,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .tertiaryColor,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryColor,
                                    width: 2,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 0, 16, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          valueOrDefault<String>(
                                            dateTimeFormat(
                                                'M/d H:mm', datePicked),
                                            'Time',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle1,
                                        ),
                                      ),
                                      FaIcon(
                                        FontAwesomeIcons.calendarCheck,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                        size: 24,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: TextFormField(
                                  controller: weightFieldController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText:
                                        FFLocalizations.of(context).getText(
                                      'ccdawajd' /* Duration */,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            16, 24, 16, 24),
                                  ),
                                  style: FlutterFlowTheme.of(context).subtitle1,
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                                child: FlutterFlowDropDown(
                                  initialOption: weightUnitSelectionValue ??=
                                      FFLocalizations.of(context).getText(
                                    'axg1hzbv' /* minute */,
                                  ),
                                  options: [
                                    FFLocalizations.of(context).getText(
                                      'xcxs956o' /* minute */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'at3tqt1o' /* hour */,
                                    )
                                  ],
                                  onChanged: (val) => setState(
                                      () => weightUnitSelectionValue = val),
                                  width: 120,
                                  height: 50,
                                  textStyle:
                                      FlutterFlowTheme.of(context).subtitle1,
                                  fillColor: Colors.white,
                                  elevation: 2,
                                  borderColor: Colors.transparent,
                                  borderWidth: 0,
                                  borderRadius: 0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      12, 4, 12, 4),
                                  hidesUnderline: true,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 64, 0, 0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              final petSchedulesCreateData =
                                  createPetSchedulesRecordData(
                                name: nameFieldController.text,
                                description: descFieldController.text,
                                scheduledAt: datePicked,
                                duration: int.parse(weightFieldController.text),
                                durationUnit: weightUnitSelectionValue,
                                ownerUid: currentUserReference,
                                createdAt: getCurrentTimestamp,
                                petUid: addSchedulePetsRecord.reference,
                              );
                              await PetSchedulesRecord.collection
                                  .doc()
                                  .set(petSchedulesCreateData);
                              Navigator.pop(context);
                            },
                            text: FFLocalizations.of(context).getText(
                              '8mpc4rcp' /* Add plan */,
                            ),
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 56,
                              color:
                                  FlutterFlowTheme.of(context).secondaryColor,
                              textStyle:
                                  FlutterFlowTheme.of(context).title3.override(
                                        fontFamily: 'RockoUltra',
                                        color: FlutterFlowTheme.of(context)
                                            .tertiaryColor,
                                        useGoogleFonts: false,
                                      ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
