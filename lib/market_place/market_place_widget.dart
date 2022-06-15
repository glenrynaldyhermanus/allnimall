import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class MarketPlaceWidget extends StatefulWidget {
  const MarketPlaceWidget({Key key}) : super(key: key);

  @override
  _MarketPlaceWidgetState createState() => _MarketPlaceWidgetState();
}

class _MarketPlaceWidgetState extends State<MarketPlaceWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
        automaticallyImplyLeading: true,
        title: Text(
          FFLocalizations.of(context).getText(
            '4vlofnhq' /* Marketplace */,
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
      backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Lottie.asset(
                'assets/lottie_animations/coming_soon.json',
                width: MediaQuery.of(context).size.width * 0.9,
                height: 130,
                fit: BoxFit.cover,
                animate: true,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 56, 0, 0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'rc07r47s' /* Coming Soon */,
                ),
                style: FlutterFlowTheme.of(context).title2.override(
                      fontFamily: 'RockoUltra',
                      color: Color(0xFF717171),
                      useGoogleFonts: false,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(32, 0, 32, 0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'tu0ilbnp' /* Hang on! We're on our way... */,
                ),
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).subtitle1.override(
                      fontFamily: 'Cabin',
                      fontSize: 20,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
