import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../grooming_detail/grooming_detail_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderListWidget extends StatefulWidget {
  const OrderListWidget({Key key}) : super(key: key);

  @override
  _OrderListWidgetState createState() => _OrderListWidgetState();
}

class _OrderListWidgetState extends State<OrderListWidget> {
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
          'Orders',
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
        child: StreamBuilder<List<OrdersRecord>>(
          stream: queryOrdersRecord(
            queryBuilder: (ordersRecord) => ordersRecord
                .where('customer_uid', isEqualTo: currentUserReference)
                .orderBy('created_at', descending: true),
          ),
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
            List<OrdersRecord> columnOrdersRecordList = snapshot.data;
            return SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children:
                    List.generate(columnOrdersRecordList.length, (columnIndex) {
                  final columnOrdersRecord =
                      columnOrdersRecordList[columnIndex];
                  return Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                    child: InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GroomingDetailWidget(
                              order: columnOrdersRecord.reference,
                            ),
                          ),
                        );
                      },
                      child: Row(
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
                                    columnOrdersRecord.name,
                                    style: FlutterFlowTheme.subtitle1.override(
                                      fontFamily: 'Cabin',
                                      color: FlutterFlowTheme.primaryColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    dateTimeFormat('relative',
                                        columnOrdersRecord.createdAt),
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Cabin',
                                      fontSize: 12,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 8, 0, 0),
                                    child: Container(
                                      height: 28,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFF2F2F2),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8, 4, 8, 0),
                                        child: Text(
                                          columnOrdersRecord.status,
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Cabin',
                                            color: Color(0xFF62CD59),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            );
          },
        ),
      ),
    );
  }
}
