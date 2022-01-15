import '../chat/chat_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../request_feature/request_feature_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class HelpWidget extends StatefulWidget {
  const HelpWidget({Key key}) : super(key: key);

  @override
  _HelpWidgetState createState() => _HelpWidgetState();
}

class _HelpWidgetState extends State<HelpWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.tertiaryColor,
        iconTheme: IconThemeData(color: FlutterFlowTheme.primaryColor),
        automaticallyImplyLeading: true,
        title: Text(
          'Help Center',
          style: FlutterFlowTheme.title3.override(
            fontFamily: 'RockoUltra',
            color: FlutterFlowTheme.primaryColor,
            useGoogleFonts: false,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.tertiaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset(
                'assets/images/faq.png',
                width: double.infinity,
                height: 288,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Tell us how we can help',
                      style: FlutterFlowTheme.title3.override(
                        fontFamily: 'RockoUltra',
                        color: FlutterFlowTheme.primaryColor,
                        useGoogleFonts: false,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                      child: Text(
                        'Our super crews are standing by\nfor service and support',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.subtitle2,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ChatWidget(),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(24),
                              child: Image.asset(
                                'assets/images/Screenshot_2022-01-05_at_16.21.17.png',
                                width: 72,
                                height: 72,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Chat Us',
                                          style: FlutterFlowTheme.subtitle1,
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Get solutions direct to your inbox',
                                      style: FlutterFlowTheme.bodyText1,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: FlutterFlowTheme.primaryColor,
                              size: 24,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: InkWell(
                        onTap: () async {
                          await launchURL('https://allnimall.com/');
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(24),
                              child: Image.asset(
                                'assets/images/Screenshot_2022-01-05_at_16.24.44.png',
                                width: 72,
                                height: 72,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'FAQs',
                                          style: FlutterFlowTheme.subtitle1,
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'What\'s buuggin\' you? Find it here!',
                                      style: FlutterFlowTheme.bodyText1,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: FlutterFlowTheme.primaryColor,
                              size: 24,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RequestFeatureWidget(),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(24),
                              child: Image.asset(
                                'assets/images/5363927.png',
                                width: 72,
                                height: 72,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Request Features',
                                          style: FlutterFlowTheme.subtitle1,
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Need something from this pawsome app? Tell us, don\'t be shy',
                                      style: FlutterFlowTheme.bodyText1,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: FlutterFlowTheme.primaryColor,
                              size: 24,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
