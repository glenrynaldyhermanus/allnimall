import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPageWidget extends StatefulWidget {
  SplashPageWidget({Key key}) : super(key: key);

  @override
  _SplashPageWidgetState createState() => _SplashPageWidgetState();
}

class _SplashPageWidgetState extends State<SplashPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 1,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF22164D),
              FlutterFlowTheme.primaryColor,
              Color(0xFF7661C8),
              Color(0xFF806BD0)
            ],
            stops: [0, 0.5, 0.7, 1],
            begin: Alignment(1, 1),
            end: Alignment(-1, -1),
          ),
        ),
        child: Align(
          alignment: Alignment(0, 0),
          child: Text(
            'allnimall',
            style: FlutterFlowTheme.title1.override(
              fontFamily: 'Gorditas',
              color: FlutterFlowTheme.tertiaryColor,
              fontSize: 48,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
