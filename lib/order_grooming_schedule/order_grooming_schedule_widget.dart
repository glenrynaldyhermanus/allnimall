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
          'Jadwal',
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
                              'Tanggal Grooming',
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
                                        child: CalendarPickerWidget(
                                          isAllowBackdate: false,
                                        ),
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
                              'Waktu Grooming',
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                            FlutterFlowDropDown(
                              initialOption: dropDownValue1 ??= 'Pagi',
                              options: ['Pagi', 'Siang', 'Sore'],
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
                              hintText: 'Pilih waktu',
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
                  padding: EdgeInsetsDirectional.fromSTEB(25, 5, 25, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 10,
                        height: 100,
                        constraints: BoxConstraints(
                          maxHeight: 100,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFDBDCFF),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Perhatian',
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'RockoUltra',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryColor,
                                      fontSize: 14,
                                      fontStyle: FontStyle.italic,
                                      useGoogleFonts: false,
                                    ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                                child: Text(
                                  'Tanggal dan waktu yang ditentukan mungkin berubah jika jadwal penuh. \nKami akan mengikonfirmasikan setiap perubahan jadwal. ',
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Cabin',
                                        fontStyle: FontStyle.italic,
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(25, 40, 25, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Backup Plan',
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                              child: Text(
                                'Jika ada perubahan jadwal, kamu ingin diganti di hari apa?',
                                style: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Cabin',
                                      fontStyle: FontStyle.italic,
                                    ),
                              ),
                            ),
                            FlutterFlowDropDown(
                              initialOption: dropDownValue2 ??=
                                  'Weekday / Hari Kerja',
                              options: [
                                'Weekday / Hari Kerja',
                                'Weekend / Hari Libur'
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
                              hintText: 'Pilih preferensi hari',
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
                        if ((FFAppState().localScheduleDate != null)) {
                          setState(() =>
                              FFAppState().localPreferedTime = dropDownValue1);
                          setState(() =>
                              FFAppState().localPreferedDay = dropDownValue2);
                          Navigator.pop(context);
                        } else {
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: Text('Jadwal Gagal Di-set'),
                                content: Text(
                                    'Mohon pilih tanggal dan preferensi waktu'),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext),
                                    child: Text('Ok'),
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      },
                      text: 'Set Jadwal',
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
