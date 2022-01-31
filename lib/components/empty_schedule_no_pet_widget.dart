import '../add_schedule/add_schedule_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class EmptyScheduleNoPetWidget extends StatefulWidget {
  const EmptyScheduleNoPetWidget({
    Key key,
    this.petRef,
  }) : super(key: key);

  final DocumentReference petRef;

  @override
  _EmptyScheduleNoPetWidgetState createState() =>
      _EmptyScheduleNoPetWidgetState();
}

class _EmptyScheduleNoPetWidgetState extends State<EmptyScheduleNoPetWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            'You have no upcoming schedules.\nTo create schedule you must first add your pet',
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.subtitle2,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
            child: FFButtonWidget(
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
              text: 'Add pet',
              options: FFButtonOptions(
                width: 160,
                height: 40,
                color: FlutterFlowTheme.primaryColor,
                textStyle: FlutterFlowTheme.title3.override(
                  fontFamily: 'RockoUltra',
                  color: FlutterFlowTheme.tertiaryColor,
                  fontSize: 14,
                  useGoogleFonts: false,
                ),
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
                borderRadius: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
