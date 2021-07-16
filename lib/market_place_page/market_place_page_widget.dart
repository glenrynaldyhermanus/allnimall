import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class MarketPlacePageWidget extends StatefulWidget {
  MarketPlacePageWidget({Key key}) : super(key: key);

  @override
  _MarketPlacePageWidgetState createState() => _MarketPlacePageWidgetState();
}

class _MarketPlacePageWidgetState extends State<MarketPlacePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.tertiaryColor,
        automaticallyImplyLeading: true,
        title: Text(
          'Marketplace',
          style: FlutterFlowTheme.title1.override(
            fontFamily: 'Fredoka One',
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment(0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [],
              ),
            ),
            Align(
              alignment: Alignment(0, 1),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 32,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.primaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(120),
                    topRight: Radius.circular(120),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
