import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class AddressFormWidget extends StatefulWidget {
  const AddressFormWidget({Key key}) : super(key: key);

  @override
  _AddressFormWidgetState createState() => _AddressFormWidgetState();
}

class _AddressFormWidgetState extends State<AddressFormWidget> {
  TextEditingController textController1;
  TextEditingController textController2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.tertiaryColor,
        iconTheme: IconThemeData(color: FlutterFlowTheme.primaryColor),
        automaticallyImplyLeading: true,
        title: Text(
          'Address',
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
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    TextFormField(
                      controller: textController1,
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'Full address',
                        hintStyle: FlutterFlowTheme.subtitle1,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.secondaryColor,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.secondaryColor,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                      ),
                      style: FlutterFlowTheme.subtitle1,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                      child: TextFormField(
                        controller: textController2,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Detail location',
                          hintStyle: FlutterFlowTheme.subtitle1,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.secondaryColor,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.secondaryColor,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                        ),
                        style: FlutterFlowTheme.subtitle1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: 'Save address',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 56,
                  color: FlutterFlowTheme.secondaryColor,
                  textStyle: FlutterFlowTheme.title3.override(
                    fontFamily: 'RockoUltra',
                    color: FlutterFlowTheme.tertiaryColor,
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
      ),
    );
  }
}
