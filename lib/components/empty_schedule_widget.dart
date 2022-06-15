import '../add_schedule/add_schedule_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class EmptyScheduleWidget extends StatefulWidget {
  const EmptyScheduleWidget({
    Key key,
    this.petRef,
  }) : super(key: key);

  final DocumentReference petRef;

  @override
  _EmptyScheduleWidgetState createState() => _EmptyScheduleWidgetState();
}

class _EmptyScheduleWidgetState extends State<EmptyScheduleWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            'You have no upcoming schedules',
            style: FlutterFlowTheme.of(context).subtitle2,
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
              text: 'Create schedule',
              options: FFButtonOptions(
                width: 160,
                height: 40,
                color: FlutterFlowTheme.of(context).primaryColor,
                textStyle: FlutterFlowTheme.of(context).title3.override(
                      fontFamily: 'RockoUltra',
                      color: FlutterFlowTheme.of(context).tertiaryColor,
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
