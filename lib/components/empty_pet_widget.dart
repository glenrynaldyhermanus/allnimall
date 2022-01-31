import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../new_pet/new_pet_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class EmptyPetWidget extends StatefulWidget {
  const EmptyPetWidget({Key key}) : super(key: key);

  @override
  _EmptyPetWidgetState createState() => _EmptyPetWidgetState();
}

class _EmptyPetWidgetState extends State<EmptyPetWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          FontAwesomeIcons.cat,
          color: Color(0xFF8B97A2),
          size: 64,
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Add your pet',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.title3,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  'Let\'s join our vast community and bring the best out of your pets',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.bodyText1,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
          child: FFButtonWidget(
            onPressed: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NewPetWidget(),
                ),
              );
            },
            text: 'Add',
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
              elevation: 2,
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
              borderRadius: 8,
            ),
          ),
        ),
      ],
    );
  }
}
