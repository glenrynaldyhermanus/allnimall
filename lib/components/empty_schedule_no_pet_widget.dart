import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../new_pet/new_pet_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class EmptyScheduleNoPetWidget extends StatefulWidget {
  const EmptyScheduleNoPetWidget({Key key}) : super(key: key);

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
            FFLocalizations.of(context).getText(
              'dfhc4yi1' /* You have no upcoming schedules... */,
            ),
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).subtitle2,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
            child: FFButtonWidget(
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewPetWidget(),
                  ),
                );
              },
              text: FFLocalizations.of(context).getText(
                'hogv89al' /* Add pet */,
              ),
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
