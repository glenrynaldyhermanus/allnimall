import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';

class TimelineWidget extends StatefulWidget {
  const TimelineWidget({Key key}) : super(key: key);

  @override
  _TimelineWidgetState createState() => _TimelineWidgetState();
}

class _TimelineWidgetState extends State<TimelineWidget> {
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
          'Social',
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
        child: StreamBuilder<List<PetPostsRecord>>(
          stream: queryPetPostsRecord(
            queryBuilder: (petPostsRecord) =>
                petPostsRecord.orderBy('created_at', descending: true),
          ),
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
            List<PetPostsRecord> columnPetPostsRecordList = snapshot.data;
            return SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: List.generate(columnPetPostsRecordList.length,
                    (columnIndex) {
                  final columnPetPostsRecord =
                      columnPetPostsRecordList[columnIndex];
                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(18),
                              child: Image.network(
                                columnPetPostsRecord.petPictureUrl,
                                width: 36,
                                height: 36,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 0, 0, 0),
                                  child: Text(
                                    columnPetPostsRecord.petName,
                                    style: FlutterFlowTheme.of(context)
                                        .subtitle1
                                        .override(
                                          fontFamily: 'Cabin',
                                          fontSize: 20,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 0, 0, 0),
                                  child: Text(
                                    dateTimeFormat('relative',
                                        columnPetPostsRecord.createdAt),
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      if ((columnPetPostsRecord.text) != '')
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                          child: Text(
                            columnPetPostsRecord.text,
                            style: FlutterFlowTheme.of(context).subtitle2,
                          ),
                        ),
                      if ((columnPetPostsRecord.image) != '')
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: Image.network(
                            columnPetPostsRecord.image,
                            width: double.infinity,
                            height: 240,
                            fit: BoxFit.cover,
                          ),
                        ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ToggleIcon(
                                  onPressed: () async {
                                    final favedByElement = currentUserReference;
                                    final favedByUpdate = columnPetPostsRecord
                                            .favedBy
                                            .toList()
                                            .contains(favedByElement)
                                        ? FieldValue.arrayRemove(
                                            [favedByElement])
                                        : FieldValue.arrayUnion(
                                            [favedByElement]);
                                    final petPostsUpdateData = {
                                      'faved_by': favedByUpdate,
                                    };
                                    await columnPetPostsRecord.reference
                                        .update(petPostsUpdateData);
                                  },
                                  value: columnPetPostsRecord.favedBy
                                      .toList()
                                      .contains(currentUserReference),
                                  onIcon: Icon(
                                    Icons.favorite,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryColor,
                                    size: 26,
                                  ),
                                  offIcon: Icon(
                                    Icons.favorite_border,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryColor,
                                    size: 26,
                                  ),
                                ),
                                if ((functions.countFavs(columnPetPostsRecord
                                        .favedBy
                                        .toList())) >
                                    0)
                                  Text(
                                    functions
                                        .countFavs(columnPetPostsRecord.favedBy
                                            .toList())
                                        .toString(),
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                Text(
                                  ' loves',
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ],
                            ),
                          ),
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30,
                            borderWidth: 1,
                            buttonSize: 60,
                            icon: Icon(
                              Icons.share_sharp,
                              color:
                                  FlutterFlowTheme.of(context).secondaryColor,
                              size: 24,
                            ),
                            onPressed: () async {
                              await Share.share('www.allnimall.com');
                            },
                          ),
                        ],
                      ),
                    ],
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
