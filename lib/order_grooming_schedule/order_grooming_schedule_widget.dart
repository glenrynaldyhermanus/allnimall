import '../components/calendar_picker_widget.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderGroomingScheduleWidget extends StatefulWidget {
  const OrderGroomingScheduleWidget({Key key}) : super(key: key);

  @override
  _OrderGroomingScheduleWidgetState createState() =>
      _OrderGroomingScheduleWidgetState();
}

class _OrderGroomingScheduleWidgetState
    extends State<OrderGroomingScheduleWidget> {
  String dropDownValue1;
  String dropDownValue2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
        iconTheme:
            IconThemeData(color: FlutterFlowTheme.of(context).primaryColor),
        automaticallyImplyLeading: true,
        title: Text(
          FFLocalizations.of(context).getText(
            '2plzp3ov' /* Jadwal */,
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(25, 25, 25, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'rsdmox0m' /* Tanggal Grooming */,
                              ),
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                              child: InkWell(
                                onTap: () async {
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    context: context,
                                    builder: (context) {
                                      return Padding(
                                        padding:
                                            MediaQuery.of(context).viewInsets,
                                        child: CalendarPickerWidget(),
                                      );
                                    },
                                  );
                                },
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 52,
                                  decoration: BoxDecoration(
                                    color: Color(0x7FDBDCFF),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24, 0, 16, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            valueOrDefault<String>(
                                              dateTimeFormat(
                                                  'MMMMEEEEd',
                                                  FFAppState()
                                                      .localScheduleDate),
                                              'Pilih tanggal',
                                            ),
                                            maxLines: 2,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText2,
                                          ),
                                        ),
                                        Icon(
                                          Icons.date_range,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryColor,
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(25, 25, 25, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'ks27s9h3' /* Waktu Grooming */,
                              ),
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                            FlutterFlowDropDown(
                              options: [
                                FFLocalizations.of(context).getText(
                                  'bwcqkmqs' /* Pagi  */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '2i1eix49' /* Siang */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'yg2kx93j' /* Sore */,
                                )
                              ],
                              onChanged: (val) =>
                                  setState(() => dropDownValue1 = val),
                              width: double.infinity,
                              height: 50,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Cabin',
                                    color: Colors.black,
                                  ),
                              hintText: FFLocalizations.of(context).getText(
                                '5d4yj1it' /* Pilih waktu */,
                              ),
                              icon: Icon(
                                Icons.access_time,
                                color:
                                    FlutterFlowTheme.of(context).secondaryColor,
                                size: 20,
                              ),
                              fillColor: Color(0x7FDBDCFF),
                              elevation: 2,
                              borderColor: Colors.transparent,
                              borderWidth: 0,
                              borderRadius: 0,
                              margin:
                                  EdgeInsetsDirectional.fromSTEB(24, 4, 16, 4),
                              hidesUnderline: true,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(25, 25, 25, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'shylpsre' /* Backup Plan */,
                              ),
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                            FlutterFlowDropDown(
                              options: [
                                FFLocalizations.of(context).getText(
                                  'tzq56v5j' /* Weekday / Hari Kerja */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'ec0q5urg' /* Weekend / Hari Libur */,
                                )
                              ],
                              onChanged: (val) =>
                                  setState(() => dropDownValue2 = val),
                              width: double.infinity,
                              height: 50,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Cabin',
                                    color: Colors.black,
                                  ),
                              hintText: FFLocalizations.of(context).getText(
                                'u15qvhcj' /* Pilih preferensi hari */,
                              ),
                              icon: Icon(
                                Icons.access_time,
                                color:
                                    FlutterFlowTheme.of(context).secondaryColor,
                                size: 20,
                              ),
                              fillColor: Color(0x7FDBDCFF),
                              elevation: 2,
                              borderColor: Colors.transparent,
                              borderWidth: 0,
                              borderRadius: 0,
                              margin:
                                  EdgeInsetsDirectional.fromSTEB(24, 4, 16, 4),
                              hidesUnderline: true,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(50, 0, 50, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 25),
                    child: FFButtonWidget(
                      onPressed: () async {
                        setState(() =>
                            FFAppState().localPreferedTime = dropDownValue1);
                        setState(() =>
                            FFAppState().localPreferedDay = dropDownValue2);
                        Navigator.pop(context);
                      },
                      text: FFLocalizations.of(context).getText(
                        'uu0s4mep' /* Set Jadwal */,
                      ),
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 48,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle: FlutterFlowTheme.of(context).title3.override(
                              fontFamily: 'RockoUltra',
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              fontSize: 16,
                              useGoogleFonts: false,
                            ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: 4,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
