import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class EmptyScheduleNoPetWidget extends StatefulWidget {
  const EmptyScheduleNoPetWidget({Key? key}) : super(key: key);

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
            style: FlutterFlowTheme.of(context).subtitle2,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
            child: FFButtonWidget(
              onPressed: () async {
                context.pushNamed('NewPet');
              },
              text: 'Add pet',
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
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
