import '../flutter_flow/flutter_flow_calendar.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class CalendarPickerWidget extends StatefulWidget {
  const CalendarPickerWidget({
    Key? key,
    this.isAllowBackdate,
  }) : super(key: key);

  final bool? isAllowBackdate;

  @override
  _CalendarPickerWidgetState createState() => _CalendarPickerWidgetState();
}

class _CalendarPickerWidgetState extends State<CalendarPickerWidget> {
  DateTimeRange? calendarSelectedDay;

  @override
  void initState() {
    super.initState();
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Container(
        width: double.infinity,
        height: 460,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0),
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Pilih Tanggal',
                    style: FlutterFlowTheme.of(context).title2.override(
                          fontFamily: 'Outfit',
                          color: Color(0xFF090F13),
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      if (widget.isAllowBackdate!) {
                        setState(() => FFAppState().localScheduleDate =
                            calendarSelectedDay?.start);
                        context.pop();
                      } else {
                        if (functions
                            .isEarlierThanToday(calendarSelectedDay?.start)) {
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: Text('Set Tanggal Gagal'),
                                content: Text(
                                    'Tanggal yang dipilih tidak boleh kurang dari hari ini'),
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
                        } else {
                          setState(() => FFAppState().localScheduleDate =
                              calendarSelectedDay?.start);
                          context.pop();
                        }
                      }
                    },
                    text: 'Pilih',
                    options: FFButtonOptions(
                      width: 120,
                      height: 44,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Lexend Deca',
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                      elevation: 3,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ],
              ),
            ),
            FlutterFlowCalendar(
              color: FlutterFlowTheme.of(context).primaryColor,
              weekFormat: false,
              weekStartsMonday: false, 
              initialDate: FFAppState().localScheduleDate,
              onChange: (DateTimeRange? newSelectedDate) {
                setState(() => calendarSelectedDay = newSelectedDate);
              },
              titleStyle: TextStyle(),
              dayOfWeekStyle: TextStyle(),
              dateStyle: TextStyle(),
              selectedDateStyle: TextStyle(),
              inactiveDateStyle: TextStyle(),
              locale: FFLocalizations.of(context).languageCode,
            ),
          ],
        ),
      ),
    );
  }
}
