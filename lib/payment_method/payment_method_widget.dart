import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_backup/home_backup_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentMethodWidget extends StatefulWidget {
  const PaymentMethodWidget({
    Key key,
    this.order,
  }) : super(key: key);

  final OrdersRecord order;

  @override
  _PaymentMethodWidgetState createState() => _PaymentMethodWidgetState();
}

class _PaymentMethodWidgetState extends State<PaymentMethodWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
        iconTheme:
            IconThemeData(color: FlutterFlowTheme.of(context).primaryColor),
        automaticallyImplyLeading: true,
        title: Text(
          'Pembayaran',
          style: FlutterFlowTheme.of(context).title1.override(
                fontFamily: 'RockoUltra',
                fontSize: 18,
                useGoogleFonts: false,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Total yang harus dibayar',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context).subtitle2,
                        ),
                        Text(
                          widget.order.amount.toString(),
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context).title1,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                          child: Text(
                            'Transfer Bank',
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'RockoUltra',
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  fontSize: 18,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Color(0x19EF487F),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20, 20, 20, 20),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Image.asset(
                                    'assets/images/logo_bca.png',
                                    width: 48,
                                    height: 48,
                                    fit: BoxFit.cover,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 0, 0, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Bank BCA',
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle1
                                              .override(
                                                fontFamily: 'Cabin',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        Text(
                                          '5790285478',
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle1,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Color(0x19EF487F),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20, 20, 20, 20),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Image.asset(
                                    'assets/images/logo_mandiri.png',
                                    width: 48,
                                    height: 48,
                                    fit: BoxFit.cover,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 0, 0, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Bank Mandiri',
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle1
                                              .override(
                                                fontFamily: 'Cabin',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        Text(
                                          '1230005921541',
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle1,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                          child: Text(
                            'Cara Bayar',
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'RockoUltra',
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  fontSize: 18,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '1.',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context).subtitle2,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 0),
                                  child: Text(
                                    'Transfer ke salah satu nomor rekening di atas sesuai jumlah yang harus dibayar.',
                                    textAlign: TextAlign.start,
                                    style:
                                        FlutterFlowTheme.of(context).subtitle2,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '2.',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context).subtitle2,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 0),
                                  child: Text(
                                    'Share screenshoot bukti transfer kamu dengan menekan tombol Konfirmasi di bawah.',
                                    textAlign: TextAlign.start,
                                    style:
                                        FlutterFlowTheme.of(context).subtitle2,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                          child: FFButtonWidget(
                            onPressed: () async {
                              await launchURL(
                                  'https://api.whatsapp.com/send?phone=6285163707044&text=Konfirmasi%pembayaran%20untuk%20order%20${widget.order.orderNo}');
                            },
                            text: 'Konfirmasi Pembayaran',
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 56,
                              color: FlutterFlowTheme.of(context).primaryColor,
                              textStyle:
                                  FlutterFlowTheme.of(context).title3.override(
                                        fontFamily: 'RockoUltra',
                                        color: FlutterFlowTheme.of(context)
                                            .tertiaryColor,
                                        fontSize: 16,
                                        useGoogleFonts: false,
                                      ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: 24,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                          child: FFButtonWidget(
                            onPressed: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomeBackupWidget(),
                                ),
                              );
                            },
                            text: 'Home',
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 56,
                              color:
                                  FlutterFlowTheme.of(context).secondaryColor,
                              textStyle:
                                  FlutterFlowTheme.of(context).title3.override(
                                        fontFamily: 'RockoUltra',
                                        color: FlutterFlowTheme.of(context)
                                            .tertiaryColor,
                                        fontSize: 18,
                                        useGoogleFonts: false,
                                      ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
