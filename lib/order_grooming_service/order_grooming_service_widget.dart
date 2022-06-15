import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../order_service_list/order_service_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderGroomingServiceWidget extends StatefulWidget {
  const OrderGroomingServiceWidget({Key key}) : super(key: key);

  @override
  _OrderGroomingServiceWidgetState createState() =>
      _OrderGroomingServiceWidgetState();
}

class _OrderGroomingServiceWidgetState
    extends State<OrderGroomingServiceWidget> {
  String dropDownValue1;
  String dropDownValue2;
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
          FFLocalizations.of(context).getText(
            'us5mi1ap' /* Layanan */,
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(25, 25, 25, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'yy4vd5no' /* Jumlah pet */,
                              ),
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                              child: FlutterFlowDropDown(
                                initialOption: dropDownValue1 ??=
                                    FFLocalizations.of(context).getText(
                                  'tcimovkd' /* 1 */,
                                ),
                                options: [
                                  FFLocalizations.of(context).getText(
                                    '45y00u4y' /* 1 */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'f6ls85da' /* 2 */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'm448vwiz' /* 3 */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'x160uejt' /* 4 */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'c7dcf61w' /* 5 */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'tnag9szu' /* 6 */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'l5hkh5cb' /* 7 */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'm67p9bav' /* 8 */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'fa0padmp' /* 9 */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    '4ftki7k3' /* 10 */,
                                  )
                                ],
                                onChanged: (val) =>
                                    setState(() => dropDownValue1 = val),
                                width: double.infinity,
                                height: 50,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Cabin',
                                      color: Colors.black,
                                    ),
                                hintText: FFLocalizations.of(context).getText(
                                  '25i3wfw4' /* Jumlah pet */,
                                ),
                                icon: Icon(
                                  Icons.filter_1,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryColor,
                                  size: 20,
                                ),
                                fillColor: Color(0x7FDBDCFF),
                                elevation: 2,
                                borderColor: Colors.transparent,
                                borderWidth: 0,
                                borderRadius: 0,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    24, 4, 16, 4),
                                hidesUnderline: true,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(25, 25, 25, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                '9gvsx8w9' /* Kategori pet */,
                              ),
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                              child: FlutterFlowDropDown(
                                initialOption: dropDownValue2 ??=
                                    FFLocalizations.of(context).getText(
                                  'py9yxdd4' /* Kucing */,
                                ),
                                options: [
                                  FFLocalizations.of(context).getText(
                                    'ue7pig5v' /* Kucing */,
                                  )
                                ],
                                onChanged: (val) =>
                                    setState(() => dropDownValue2 = val),
                                width: double.infinity,
                                height: 50,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Cabin',
                                      color: Colors.black,
                                    ),
                                hintText: FFLocalizations.of(context).getText(
                                  'pyr8v9bn' /* Pilih pet */,
                                ),
                                icon: Icon(
                                  Icons.pets,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryColor,
                                  size: 20,
                                ),
                                fillColor: Color(0x7FDBDCFF),
                                elevation: 2,
                                borderColor: Colors.transparent,
                                borderWidth: 0,
                                borderRadius: 0,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    24, 4, 16, 4),
                                hidesUnderline: true,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(25, 25, 25, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                '9tt4ob7h' /* Layanan */,
                              ),
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                              child: InkWell(
                                onTap: () async {
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          OrderServiceListWidget(
                                        petCategory: dropDownValue2,
                                      ),
                                    ),
                                  );
                                },
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 52,
                                  decoration: BoxDecoration(
                                    color: Color(0x7FDBDCFF),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24, 0, 16, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            valueOrDefault<String>(
                                              FFAppState().localServiceName,
                                              'Pilih layanan',
                                            ),
                                            maxLines: 2,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText2,
                                          ),
                                        ),
                                        Icon(
                                          Icons.room_service,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryColor,
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(50, 0, 50, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 25),
                    child: FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: FFLocalizations.of(context).getText(
                        'duq0q3fr' /* Pilih Layanan */,
                      ),
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 48,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle: FlutterFlowTheme.of(context).title3.override(
                              fontFamily: 'RockoUltra',
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              fontSize: 16,
                              useGoogleFonts: false,
                            ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: 4,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
