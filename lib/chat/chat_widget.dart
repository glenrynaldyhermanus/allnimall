import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatWidget extends StatefulWidget {
  const ChatWidget({Key key}) : super(key: key);

  @override
  _ChatWidgetState createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
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
          'Chat',
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
              child: Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.tertiaryColor,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                  child: StreamBuilder<List<ChatMessagesRecord>>(
                    stream: queryChatMessagesRecord(
                      queryBuilder: (chatMessagesRecord) => chatMessagesRecord
                          .where('user', isEqualTo: currentUserReference)
                          .orderBy('created_at'),
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
                      List<ChatMessagesRecord> columnChatMessagesRecordList =
                          snapshot.data;
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(
                            columnChatMessagesRecordList.length, (columnIndex) {
                          final columnChatMessagesRecord =
                              columnChatMessagesRecordList[columnIndex];
                          return Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              if ((columnChatMessagesRecord.isResponse) ==
                                  false)
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 4, 0, 4),
                                  child: Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color: FlutterFlowTheme.secondaryColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(24),
                                        bottomRight: Radius.circular(24),
                                        topLeft: Radius.circular(0),
                                        topRight: Radius.circular(24),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16, 16, 16, 16),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Me',
                                            style: FlutterFlowTheme.bodyText2
                                                .override(
                                              fontFamily: 'Cabin',
                                              color: Color(0xA4FFFFFF),
                                              fontSize: 14,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 4, 0, 0),
                                            child: Text(
                                              columnChatMessagesRecord.text,
                                              style: FlutterFlowTheme.subtitle2
                                                  .override(
                                                fontFamily: 'Cabin',
                                                color: FlutterFlowTheme
                                                    .tertiaryColor,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 4, 0, 0),
                                            child: Text(
                                              dateTimeFormat(
                                                  'Hm',
                                                  columnChatMessagesRecord
                                                      .createdAt),
                                              style: FlutterFlowTheme.bodyText2
                                                  .override(
                                                fontFamily: 'Cabin',
                                                color: Color(0xA4FFFFFF),
                                                fontSize: 11,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [],
                              ),
                              if ((columnChatMessagesRecord.isResponse) == true)
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 4, 0, 4),
                                  child: Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color: FlutterFlowTheme.primaryColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(24),
                                        bottomRight: Radius.circular(0),
                                        topLeft: Radius.circular(24),
                                        topRight: Radius.circular(24),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16, 16, 16, 16),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                columnChatMessagesRecord
                                                    .adminName,
                                                style: FlutterFlowTheme
                                                    .bodyText2
                                                    .override(
                                                  fontFamily: 'Cabin',
                                                  color: Color(0xA4FFFFFF),
                                                  fontSize: 14,
                                                ),
                                              ),
                                              Text(
                                                ' from Allnimall',
                                                style: FlutterFlowTheme
                                                    .bodyText2
                                                    .override(
                                                  fontFamily: 'Cabin',
                                                  color: Color(0xA4FFFFFF),
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 4, 0, 0),
                                            child: Text(
                                              columnChatMessagesRecord.text,
                                              style: FlutterFlowTheme.subtitle2
                                                  .override(
                                                fontFamily: 'Cabin',
                                                color: FlutterFlowTheme
                                                    .tertiaryColor,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 4, 0, 0),
                                            child: Text(
                                              dateTimeFormat(
                                                  'Hm',
                                                  columnChatMessagesRecord
                                                      .createdAt),
                                              style: FlutterFlowTheme.bodyText2
                                                  .override(
                                                fontFamily: 'Cabin',
                                                color: Color(0xA4FFFFFF),
                                                fontSize: 11,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          );
                        }),
                      );
                    },
                  ),
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                          child: TextFormField(
                            onChanged: (_) => EasyDebounce.debounce(
                              'textController',
                              Duration(milliseconds: 0),
                              () => setState(() {}),
                            ),
                            controller: textController,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Put your message here...',
                              hintStyle: FlutterFlowTheme.bodyText1,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              filled: true,
                              fillColor: Color(0xFFE7E7E7),
                            ),
                            style: FlutterFlowTheme.bodyText1,
                          ),
                        ),
                      ),
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 24,
                        borderWidth: 1,
                        buttonSize: 48,
                        icon: Icon(
                          Icons.send,
                          color: FlutterFlowTheme.primaryColor,
                          size: 30,
                        ),
                        onPressed: () async {
                          final chatMessagesCreateData =
                              createChatMessagesRecordData(
                            user: currentUserReference,
                            text: textController.text,
                            isResponse: false,
                            createdAt: getCurrentTimestamp,
                            userName: currentUserDisplayName,
                          );
                          await ChatMessagesRecord.collection
                              .doc()
                              .set(chatMessagesCreateData);
                        },
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
