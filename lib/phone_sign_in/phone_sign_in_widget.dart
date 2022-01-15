import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../phone_verification/phone_verification_widget.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class PhoneSignInWidget extends StatefulWidget {
  const PhoneSignInWidget({Key key}) : super(key: key);

  @override
  _PhoneSignInWidgetState createState() => _PhoneSignInWidgetState();
}

class _PhoneSignInWidgetState extends State<PhoneSignInWidget> {
  TextEditingController phoneNumberController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    phoneNumberController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(
          'Phone Sign In',
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
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                child: TextFormField(
                  controller: phoneNumberController,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Your Phone Number',
                    labelStyle: FlutterFlowTheme.subtitle2,
                    hintText: '0801234567',
                    hintStyle: FlutterFlowTheme.subtitle2,
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
                    filled: true,
                    fillColor: FlutterFlowTheme.tertiaryColor,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                  ),
                  style: FlutterFlowTheme.subtitle1.override(
                    fontFamily: 'Cabin',
                    color: Color(0xFF757575),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    setState(() => FFAppState().phone =
                        functions.formatPhone(phoneNumberController.text));
                    if (phoneNumberController.text.isEmpty ||
                        !phoneNumberController.text.startsWith('+')) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                              'Phone Number is required and has to start with +.'),
                        ),
                      );
                      return;
                    }
                    await beginPhoneAuth(
                      context: context,
                      phoneNumber: phoneNumberController.text,
                      onCodeSent: () async {
                        await Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PhoneVerificationWidget(),
                          ),
                          (r) => false,
                        );
                      },
                    );
                  },
                  text: 'Sign In',
                  options: FFButtonOptions(
                    width: 230,
                    height: 60,
                    color: FlutterFlowTheme.primaryColor,
                    textStyle: FlutterFlowTheme.title3.override(
                      fontFamily: 'RockoUltra',
                      color: FlutterFlowTheme.tertiaryColor,
                      useGoogleFonts: false,
                    ),
                    elevation: 3,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 8,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
