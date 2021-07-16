import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../login_page/login_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileAndPetsPageWidget extends StatefulWidget {
  ProfileAndPetsPageWidget({Key key}) : super(key: key);

  @override
  _ProfileAndPetsPageWidgetState createState() =>
      _ProfileAndPetsPageWidgetState();
}

class _ProfileAndPetsPageWidgetState extends State<ProfileAndPetsPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.tertiaryColor,
        automaticallyImplyLeading: true,
        title: Text(
          'Profile n Pets',
          style: FlutterFlowTheme.title1.override(
            fontFamily: 'Fredoka One',
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.tertiaryColor,
      body: Align(
        alignment: Alignment(0, 0),
        child: Padding(
          padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'You need to sign in',
                style: FlutterFlowTheme.title2.override(
                  fontFamily: 'Fredoka One',
                  color: Color(0xFF717171),
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'It just takes a minute to sign in',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.subtitle1.override(
                  fontFamily: 'Poppins',
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 32, 0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPageWidget(),
                      ),
                    );
                  },
                  text: 'Sign In',
                  options: FFButtonOptions(
                    width: 130,
                    height: 50,
                    color: FlutterFlowTheme.secondaryColor,
                    textStyle: FlutterFlowTheme.subtitle2.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    elevation: 3,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 8,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
