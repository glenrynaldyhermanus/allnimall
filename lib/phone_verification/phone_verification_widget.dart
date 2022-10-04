import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class PhoneVerificationWidget extends StatefulWidget {
  const PhoneVerificationWidget({
    Key? key,
    this.phone,
  }) : super(key: key);

  final String? phone;

  @override
  _PhoneVerificationWidgetState createState() =>
      _PhoneVerificationWidgetState();
}

class _PhoneVerificationWidgetState extends State<PhoneVerificationWidget> {
  TextEditingController textField1Controller;
  TextEditingController textField2Controller;
  TextEditingController textField3Controller;
  TextEditingController textField4Controller;
  TextEditingController textField5Controller;
  TextEditingController textField6Controller;
  FocusNode focusNode1;
  FocusNode focusNode2;
  FocusNode focusNode3;
  FocusNode focusNode4;
  FocusNode focusNode5;
  FocusNode focusNode6;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textField1Controller = TextEditingController();
    textField2Controller = TextEditingController();
    textField3Controller = TextEditingController();
    textField4Controller = TextEditingController();
    textField5Controller = TextEditingController();
    textField6Controller = TextEditingController();

    focusNode1 = FocusNode();
    focusNode2 = FocusNode();
    focusNode3 = FocusNode();
    focusNode4 = FocusNode();
    focusNode5 = FocusNode();
    focusNode6 = FocusNode();
  }

  @override
  void dispose() {
    textField1Controller?.dispose();
    textField2Controller?.dispose();
    textField3Controller?.dispose();
    textField4Controller?.dispose();
    textField5Controller?.dispose();
    textField6Controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Verifikasi',
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
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 40, 30, 0),
                child: Text(
                  'OTP sudah dikirim ke nomor',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).subtitle1.override(
                        fontFamily: 'Cabin',
                        fontSize: 18,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                child: Text(
                  widget.phone!,
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).subtitle1.override(
                        fontFamily: 'Cabin',
                        fontSize: 18,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 20, 30, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                        child: TextFormField(
                          controller: textField1Controller,
                          focusNode: focusNode1,
                          obscureText: false,
                          maxLength: 1,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            counterText: "",
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 0,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 0,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 0,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 0,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            filled: true,
                            fillColor: Color(0x7FDBDCFF),
                          ),
                          style: FlutterFlowTheme.of(context).subtitle2,
                          keyboardType: TextInputType.number,
                          onChanged: (value) {
                            if (value.length >= 1) {
                              if (textField2Controller.text.isEmpty) {
                                focusNode1.unfocus();
                                FocusScope.of(context).requestFocus(focusNode2);
                              }
                            }
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                        child: TextFormField(
                          controller: textField2Controller,
                          focusNode: focusNode2,
                          obscureText: false,
                          maxLength: 1,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            counterText: "",
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 0,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 0,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 0,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 0,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            filled: true,
                            fillColor: Color(0x7FDBDCFF),
                          ),
                          style: FlutterFlowTheme.of(context).subtitle2,
                          keyboardType: TextInputType.number,
                          onChanged: (value) {
                            if (value.length >= 1) {
                              if (textField3Controller.text.isEmpty) {
                                focusNode2.unfocus();
                                FocusScope.of(context).requestFocus(focusNode3);
                              }
                            } else if (value.length == 0) {
                              if (textField3Controller.text.isEmpty) {
                                focusNode2.unfocus();
                                FocusScope.of(context).requestFocus(focusNode1);
                              }
                            }
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                        child: TextFormField(
                          controller: textField3Controller,
                          focusNode: focusNode3,
                          obscureText: false,
                          maxLength: 1,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            counterText: "",
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 0,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 0,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 0,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 0,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            filled: true,
                            fillColor: Color(0x7FDBDCFF),
                          ),
                          style: FlutterFlowTheme.of(context).subtitle2,
                          keyboardType: TextInputType.number,
                          onChanged: (value) {
                            if (value.length >= 1) {
                              if (textField4Controller.text.isEmpty) {
                                focusNode3.unfocus();
                                FocusScope.of(context).requestFocus(focusNode4);
                              }
                            } else if (value.length == 0) {
                              if (textField4Controller.text.isEmpty) {
                                focusNode3.unfocus();
                                FocusScope.of(context).requestFocus(focusNode2);
                              }
                            }
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                        child: TextFormField(
                          controller: textField4Controller,
                          focusNode: focusNode4,
                          obscureText: false,
                          maxLength: 1,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            counterText: "",
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 0,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 0,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 0,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 0,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            filled: true,
                            fillColor: Color(0x7FDBDCFF),
                          ),
                          style: FlutterFlowTheme.of(context).subtitle2,
                          keyboardType: TextInputType.number,
                          onChanged: (value) {
                            if (value.length >= 1) {
                              if (textField5Controller.text.isEmpty) {
                                focusNode4.unfocus();
                                FocusScope.of(context).requestFocus(focusNode5);
                              }
                            } else if (value.length == 0) {
                              if (textField5Controller.text.isEmpty) {
                                focusNode4.unfocus();
                                FocusScope.of(context).requestFocus(focusNode3);
                              }
                            }
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                        child: TextFormField(
                          controller: textField5Controller,
                          focusNode: focusNode5,
                          obscureText: false,
                          maxLength: 1,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            counterText: "",
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 0,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 0,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 0,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 0,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            filled: true,
                            fillColor: Color(0x7FDBDCFF),
                          ),
                          style: FlutterFlowTheme.of(context).subtitle2,
                          keyboardType: TextInputType.number,
                          onChanged: (value) {
                            if (value.length >= 1) {
                              if (textField6Controller.text.isEmpty) {
                                focusNode5.unfocus();
                                FocusScope.of(context).requestFocus(focusNode6);
                              }
                            } else if (value.length == 0) {
                              if (textField6Controller.text.isEmpty) {
                                focusNode5.unfocus();
                                FocusScope.of(context).requestFocus(focusNode4);
                              }
                            }
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                        child: TextFormField(
                          controller: textField6Controller,
                          focusNode: focusNode6,
                          obscureText: false,
                          maxLength: 1,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            counterText: "",
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 0,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 0,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 0,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 0,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            filled: true,
                            fillColor: Color(0x7FDBDCFF),
                          ),
                          style: FlutterFlowTheme.of(context).subtitle2,
                          keyboardType: TextInputType.number,
                          onChanged: (value) {
                            if (value.length >= 1) {
                              focusNode6.unfocus();
                            } else if (value.length == 0) {
                              focusNode6.unfocus();
                              FocusScope.of(context).requestFocus(focusNode5);
                            }
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    final smsCodeVal =
                        "${textField1Controller.text}${textField2Controller.text}${textField3Controller.text}${textField4Controller.text}${textField5Controller.text}${textField6Controller.text}";
                    if (smsCodeVal == null || smsCodeVal.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Enter SMS verification code.'),
                        ),
                      );
                      return;
                    }
                    final phoneVerifiedUser = await verifySmsCode(
                      context: context,
                      smsCode: smsCodeVal,
                    );

                    if (phoneVerifiedUser == null) {
                      return;
                    }

                    if (currentUserDisplayName != null &&
                        currentUserDisplayName != '') {
                      context.pushNamedAuth('HomeBackup', mounted);
                    } else {
                      context.goNamedAuth('SignUp', mounted);
                    }
                  },
                  text: 'Lanjut',
                  icon: Icon(
                    Icons.arrow_right_alt,
                    size: 15,
                  ),
                  options: FFButtonOptions(
                    width: 230,
                    height: 60,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'RockoUltra',
                          color: FlutterFlowTheme.of(context).tertiaryColor,
                          fontSize: 16,
                          useGoogleFonts: false,
                        ),
                    elevation: 3,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  final phoneNumberVal = widget.phone;
                  if (phoneNumberVal == null ||
                      phoneNumberVal.isEmpty ||
                      !phoneNumberVal.startsWith('+')) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Silahkan isi nomor HP'),
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
                          builder: (context) => PhoneVerificationWidget(
                            phone: widget.phone,
                          ),
                        ),
                        (r) => false,
                      );
                    },
                  );
                },
                text: 'Resend SMS',
                options: FFButtonOptions(
                  width: 230,
                  height: 60,
                  color: FlutterFlowTheme.of(context).tertiaryColor,
                  textStyle: FlutterFlowTheme.of(context).title3.override(
                        fontFamily: 'RockoUltra',
                        color: FlutterFlowTheme.of(context).primaryColor,
                        fontSize: 12,
                        useGoogleFonts: false,
                      ),
                  elevation: 0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
