import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../phone_verification/phone_verification_widget.dart';
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
      backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(32, 64, 32, 0),
              child: Image.asset(
                'assets/images/Artboard1_4.png',
                width: MediaQuery.of(context).size.width,
                height: 64,
                fit: BoxFit.contain,
              ),
            ),
            Stack(
              children: [
                Image.asset(
                  'assets/images/magicpattern-blob-1649523227547.png',
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/cathero.png',
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        '+62',
                        style: FlutterFlowTheme.of(context).subtitle1.override(
                              fontFamily: 'Cabin',
                              fontSize: 18,
                            ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: TextFormField(
                            controller: phoneNumberController,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'No Handphone',
                              labelStyle:
                                  FlutterFlowTheme.of(context).subtitle2,
                              hintText: '801234567',
                              hintStyle: FlutterFlowTheme.of(context).subtitle2,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryColor,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryColor,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              filled: true,
                              fillColor:
                                  FlutterFlowTheme.of(context).tertiaryColor,
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  20, 24, 20, 24),
                            ),
                            style:
                                FlutterFlowTheme.of(context).subtitle1.override(
                                      fontFamily: 'Cabin',
                                      color: Color(0xFF757575),
                                    ),
                            keyboardType: TextInputType.phone,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 24, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: FFButtonWidget(
                          onPressed: () async {
                            final phoneNumberVal = "+62"+phoneNumberController.text;
                            if (phoneNumberVal == null ||
                                phoneNumberVal.isEmpty ||
                                !phoneNumberVal.startsWith('+')) {
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
                              phoneNumber: phoneNumberVal,
                              onCodeSent: () async {
                                await Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        PhoneVerificationWidget(),
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
                            color: FlutterFlowTheme.of(context).primaryColor,
                            textStyle:
                                FlutterFlowTheme.of(context).title3.override(
                                      fontFamily: 'RockoUltra',
                                      color: FlutterFlowTheme.of(context)
                                          .tertiaryColor,
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
