import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class FAQArticleWidget extends StatefulWidget {
  const FAQArticleWidget({
    Key? key,
    this.faq,
  }) : super(key: key);

  final FaqsRecord? faq;

  @override
  _FAQArticleWidgetState createState() => _FAQArticleWidgetState();
}

class _FAQArticleWidgetState extends State<FAQArticleWidget> {
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
          'Artikel',
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 32, 20, 0),
                child: Text(
                  widget.faq!.question!,
                  style: FlutterFlowTheme.of(context).title3,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                child: Html(
                  data: widget.faq!.answer!,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 5, 0, 0),
                child: Text(
                  'Sumber :',
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                child: Text(
                  widget.faq!.referenceUrl!,
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 32, 0, 0),
                child: Text(
                  'Pertanyaan lainnya',
                  style: FlutterFlowTheme.of(context).title3.override(
                        fontFamily: 'RockoUltra',
                        fontSize: 16,
                        useGoogleFonts: false,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: StreamBuilder<List<FaqsRecord>>(
                  stream: queryFaqsRecord(),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: SpinKitRipple(
                            color: FlutterFlowTheme.of(context).primaryColor,
                            size: 50,
                          ),
                        ),
                      );
                    }
                    List<FaqsRecord> columnFaqsRecordList = snapshot.data!;
                    return SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(columnFaqsRecordList.length,
                            (columnIndex) {
                          final columnFaqsRecord =
                              columnFaqsRecordList[columnIndex];
                          return Visibility(
                            visible: widget.faq!.reference !=
                                columnFaqsRecord.reference,
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1),
                              child: Container(
                                width: double.infinity,
                                height: 80,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 2, 0, 0),
                                  child: InkWell(
                                    onTap: () async {
                                      final faqsUpdateData = {
                                        'visit_count': FieldValue.increment(1),
                                      };
                                      await columnFaqsRecord.reference
                                          .update(faqsUpdateData);
                                      context.pop();

                                      context.pushNamed(
                                        'FAQArticle',
                                        queryParams: {
                                          'faq': serializeParam(
                                              columnFaqsRecord,
                                              ParamType.Document),
                                        }.withoutNulls,
                                        extra: <String, dynamic>{
                                          'faq': columnFaqsRecord,
                                        },
                                      );
                                    },
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20, 10, 0, 10),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      columnFaqsRecord
                                                          .question!,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .subtitle2
                                                          .override(
                                                            fontFamily: 'Cabin',
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        columnFaqsRecord
                                                            .answer!,
                                                        maxLines: 2,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText2
                                                                .override(
                                                                  fontFamily:
                                                                      'Cabin',
                                                                  fontSize: 14,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 10, 8, 0),
                                              child: Icon(
                                                Icons.chevron_right_outlined,
                                                color: Color(0xFF95A1AC),
                                                size: 24,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
