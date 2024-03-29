import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/empty_order_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeBackupWidget extends StatefulWidget {
  const HomeBackupWidget({Key? key}) : super(key: key);

  @override
  _HomeBackupWidgetState createState() => _HomeBackupWidgetState();
}

class _HomeBackupWidgetState extends State<HomeBackupWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
        automaticallyImplyLeading: true,
        title: Text(
          'Allnimall',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'RockoUltra',
                color: FlutterFlowTheme.of(context).primaryColor,
                useGoogleFonts: false,
              ),
        ),
        actions: [
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.help_outline_rounded,
              color: FlutterFlowTheme.of(context).secondaryColor,
              size: 24,
            ),
            onPressed: () async {
              context.pushNamed('Help');
            },
          ),
        ],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(32, 0, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 32, 0, 32),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Halo kak!',
                                          style: FlutterFlowTheme.of(context)
                                              .title3
                                              .override(
                                                fontFamily: 'RockoUltra',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiaryColor,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                        Text(
                                          'Mau grooming kucing?',
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle1
                                              .override(
                                                fontFamily: 'Cabin',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiaryColor,
                                                fontSize: 15,
                                              ),
                                        ),
                                      ],
                                    ),
                                    FFButtonWidget(
                                      onPressed: () async {
                                        context.pushNamed('OrderGrooming');
                                      },
                                      text: 'Panggil Groomer',
                                      options: FFButtonOptions(
                                        width: double.infinity,
                                        height: 48,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .title3
                                            .override(
                                              fontFamily: 'RockoUltra',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiaryColor,
                                              fontSize: 14,
                                              useGoogleFonts: false,
                                            ),
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Image.asset(
                              'assets/images/Cat3_(3).png',
                              width: 160,
                              height: double.infinity,
                              fit: BoxFit.fitHeight,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Artikel',
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'RockoUltra',
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                            child: StreamBuilder<List<ArticlesRecord>>(
                              stream: queryArticlesRecord(),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: SpinKitRipple(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        size: 50,
                                      ),
                                    ),
                                  );
                                }
                                List<ArticlesRecord> rowArticlesRecordList =
                                    snapshot.data!;
                                return Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(
                                      rowArticlesRecordList.length, (rowIndex) {
                                    final rowArticlesRecord =
                                        rowArticlesRecordList[rowIndex];
                                    return Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 0, 0, 0),
                                      child: InkWell(
                                        onTap: () async {
                                          context.pushNamed(
                                            'Article',
                                            queryParams: {
                                              'article': serializeParam(
                                                  rowArticlesRecord.reference,
                                                  ParamType.DocumentReference),
                                            }.withoutNulls,
                                          );
                                        },
                                        child: Container(
                                          width: 240,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .tertiaryColor,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(32),
                                                child: Image.network(
                                                  rowArticlesRecord.imageUrl!,
                                                  width: 240,
                                                  height: 160,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(8, 8, 8, 0),
                                                child: Text(
                                                  rowArticlesRecord.title!
                                                      .maybeHandleOverflow(
                                                          maxChars: 100),
                                                  textAlign: TextAlign.justify,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .subtitle2,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                                );
                              },
                            ),
                          ),
                          Container(
                            width: 20,
                            height: 100,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 32, 20, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Order',
                          style: FlutterFlowTheme.of(context).title3.override(
                                fontFamily: 'RockoUltra',
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                useGoogleFonts: false,
                              ),
                        ),
                        InkWell(
                          onTap: () async {
                            context.pushNamed('OrderList');
                          },
                          child: Text(
                            'Lihat Semua',
                            style: FlutterFlowTheme.of(context).title2.override(
                                  fontFamily: 'RockoUltra',
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  fontSize: 14,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                      ],
                    ),
                    StreamBuilder<List<OrdersRecord>>(
                      stream: queryOrdersRecord(
                        queryBuilder: (ordersRecord) => ordersRecord
                            .where('customer_uid',
                                isEqualTo: currentUserReference)
                            .orderBy('created_at', descending: true),
                        limit: 3,
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: SpinKitRipple(
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                size: 50,
                              ),
                            ),
                          );
                        }
                        List<OrdersRecord> columnOrdersRecordList =
                            snapshot.data!;
                        if (columnOrdersRecordList.isEmpty) {
                          return EmptyOrderWidget();
                        }
                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(columnOrdersRecordList.length,
                              (columnIndex) {
                            final columnOrdersRecord =
                                columnOrdersRecordList[columnIndex];
                            return Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              elevation: 0,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 20, 0, 20),
                                    child: InkWell(
                                      onTap: () async {
                                        context.pushNamed(
                                          'OrderDetail',
                                          queryParams: {
                                            'order': serializeParam(
                                                columnOrdersRecord.reference,
                                                ParamType.DocumentReference),
                                          }.withoutNulls,
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
                                              borderRadius:
                                                  BorderRadius.circular(24),
                                            ),
                                            child: Align(
                                              alignment:
                                                  AlignmentDirectional(0, 0),
                                              child: FaIcon(
                                                FontAwesomeIcons.cat,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                size: 40,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(16, 0, 0, 0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    columnOrdersRecord.name!,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .subtitle1
                                                        .override(
                                                          fontFamily: 'Cabin',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                  Text(
                                                    dateTimeFormat(
                                                        'relative',
                                                        columnOrdersRecord
                                                            .scheduledAt!),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Cabin',
                                                          fontSize: 12,
                                                        ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 8, 0, 0),
                                                    child: Container(
                                                      height: 28,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFF2F2F2),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8, 4, 8, 0),
                                                        child: Text(
                                                          columnOrdersRecord
                                                              .status!,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Cabin',
                                                                color: Color(
                                                                    0xFF62CD59),
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
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
                                  ),
                                  Divider(
                                    height: 1,
                                    thickness: 1,
                                    color: Color(0xFFD5D5D5),
                                  ),
                                ],
                              ),
                            );
                          }),
                        );
                      },
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
