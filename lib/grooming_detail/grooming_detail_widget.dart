import '../backend/backend.dart';
import '../chat/chat_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class GroomingDetailWidget extends StatefulWidget {
  const GroomingDetailWidget({
    Key key,
    this.order,
  }) : super(key: key);

  final DocumentReference order;

  @override
  _GroomingDetailWidgetState createState() => _GroomingDetailWidgetState();
}

class _GroomingDetailWidgetState extends State<GroomingDetailWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<OrdersRecord>(
      stream: OrdersRecord.getDocument(widget.order),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: SpinKitRipple(
                color: FlutterFlowTheme.primaryColor,
                size: 50,
              ),
            ),
          );
        }
        final groomingDetailOrdersRecord = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.tertiaryColor,
            iconTheme: IconThemeData(color: FlutterFlowTheme.primaryColor),
            automaticallyImplyLeading: true,
            title: Text(
              'Grooming Detail',
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
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 88,
                              height: 88,
                              decoration: BoxDecoration(
                                color: Color(0xFFD8D1F2),
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: FaIcon(
                                  FontAwesomeIcons.cat,
                                  color: FlutterFlowTheme.primaryColor,
                                  size: 40,
                                ),
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
                                    Text(
                                      groomingDetailOrdersRecord.orderNo,
                                      style:
                                          FlutterFlowTheme.subtitle1.override(
                                        fontFamily: 'Cabin',
                                        color: FlutterFlowTheme.primaryColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 8, 0, 0),
                                      child: Text(
                                        groomingDetailOrdersRecord.status,
                                        style:
                                            FlutterFlowTheme.subtitle1.override(
                                          fontFamily: 'Cabin',
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Customer',
                                style: FlutterFlowTheme.title3.override(
                                  fontFamily: 'RockoUltra',
                                  color: FlutterFlowTheme.primaryColor,
                                  fontSize: 18,
                                  useGoogleFonts: false,
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 8, 0, 0),
                                    child: Text(
                                      'Name',
                                      style: FlutterFlowTheme.bodyText1,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 4, 0, 0),
                                    child: Text(
                                      groomingDetailOrdersRecord.customerName,
                                      style: FlutterFlowTheme.subtitle1,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 8, 0, 0),
                                    child: Text(
                                      'Address',
                                      style: FlutterFlowTheme.bodyText1,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 4, 0, 0),
                                    child: Text(
                                      groomingDetailOrdersRecord
                                          .customerAddress,
                                      style: FlutterFlowTheme.subtitle1,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Service',
                                style: FlutterFlowTheme.title3.override(
                                  fontFamily: 'RockoUltra',
                                  color: FlutterFlowTheme.primaryColor,
                                  fontSize: 18,
                                  useGoogleFonts: false,
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 8, 0, 0),
                                    child: Text(
                                      'Workscope',
                                      style: FlutterFlowTheme.bodyText1,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 4, 0, 0),
                                    child: Text(
                                      groomingDetailOrdersRecord.service,
                                      style: FlutterFlowTheme.subtitle1,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 8, 0, 0),
                                    child: Text(
                                      'Pet(s)',
                                      style: FlutterFlowTheme.bodyText1,
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 4, 0, 0),
                                        child: Text(
                                          groomingDetailOrdersRecord
                                              .petCategory,
                                          style: FlutterFlowTheme.subtitle1,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 4, 0, 0),
                                        child: Text(
                                          ' x ',
                                          style: FlutterFlowTheme.subtitle1,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 4, 0, 0),
                                        child: Text(
                                          groomingDetailOrdersRecord.quantity
                                              .toString(),
                                          style: FlutterFlowTheme.subtitle1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Payment',
                                style: FlutterFlowTheme.title3.override(
                                  fontFamily: 'RockoUltra',
                                  color: FlutterFlowTheme.primaryColor,
                                  fontSize: 18,
                                  useGoogleFonts: false,
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 8, 0, 0),
                                    child: Text(
                                      'Status',
                                      style: FlutterFlowTheme.bodyText1,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 4, 0, 0),
                                    child: Text(
                                      groomingDetailOrdersRecord.paymentStatus,
                                      style: FlutterFlowTheme.subtitle1,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 8, 0, 0),
                                    child: Text(
                                      'Total',
                                      style: FlutterFlowTheme.bodyText1,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                child: Text(
                                  'Rp${formatNumber(
                                    groomingDetailOrdersRecord.amount,
                                    formatType: FormatType.decimal,
                                    decimalType: DecimalType.automatic,
                                  )}',
                                  style: FlutterFlowTheme.subtitle1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ChatWidget(),
                                ),
                              );
                            },
                            text: 'Need help?',
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
                              borderRadius: 24,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 20),
                          child: FFButtonWidget(
                            onPressed: () async {
                              await Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      NavBarPage(initialPage: 'Home'),
                                ),
                                (r) => false,
                              );
                            },
                            text: 'Back to Home',
                            icon: Icon(
                              Icons.home_rounded,
                              size: 15,
                            ),
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 56,
                              color: FlutterFlowTheme.primaryColor,
                              textStyle: FlutterFlowTheme.title3.override(
                                fontFamily: 'RockoUltra',
                                color: FlutterFlowTheme.tertiaryColor,
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
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
