import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/empty_pet_widget.dart';
import '../components/empty_schedule_no_pet_widget.dart';
import '../edit_profile/edit_profile_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../pet_list/pet_list_widget.dart';
import '../pet_profile/pet_profile_widget.dart';
import '../phone_sign_in/phone_sign_in_widget.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileAndPetsWidget extends StatefulWidget {
  const ProfileAndPetsWidget({Key key}) : super(key: key);

  @override
  _ProfileAndPetsWidgetState createState() => _ProfileAndPetsWidgetState();
}

class _ProfileAndPetsWidgetState extends State<ProfileAndPetsWidget> {
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
          'Profile n Pets',
          style: FlutterFlowTheme.of(context).title3.override(
                fontFamily: 'RockoUltra',
                color: FlutterFlowTheme.of(context).primaryColor,
                useGoogleFonts: false,
              ),
        ),
        actions: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30,
                borderWidth: 1,
                buttonSize: 60,
                icon: Icon(
                  Icons.exit_to_app_outlined,
                  color: FlutterFlowTheme.of(context).secondaryColor,
                  size: 24,
                ),
                onPressed: () async {
                  await signOut();
                  await Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PhoneSignInWidget(),
                    ),
                    (r) => false,
                  );
                },
              ),
            ],
          ),
        ],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).tertiaryColor,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Stack(
                      children: [
                        AuthUserStreamWidget(
                          child: Image.network(
                            valueOrDefault<String>(
                              currentUserPhoto,
                              'https://i.ibb.co/BCZyXNh/2-13.jpg',
                            ),
                            width: double.infinity,
                            height: 240,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AuthUserStreamWidget(
                                      child: Text(
                                        currentUserDisplayName,
                                        style:
                                            FlutterFlowTheme.of(context).title3,
                                      ),
                                    ),
                                    AuthUserStreamWidget(
                                      child: Text(
                                        currentPhoneNumber,
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle2,
                                      ),
                                    ),
                                  ],
                                ),
                                FFButtonWidget(
                                  onPressed: () async {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            EditProfileWidget(),
                                      ),
                                    );
                                  },
                                  text: 'Profile',
                                  icon: Icon(
                                    Icons.edit_sharp,
                                    size: 16,
                                  ),
                                  options: FFButtonOptions(
                                    width: 120,
                                    height: 40,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryColor,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .title3
                                        .override(
                                          fontFamily: 'RockoUltra',
                                          color: FlutterFlowTheme.of(context)
                                              .tertiaryColor,
                                          fontSize: 14,
                                          useGoogleFonts: false,
                                        ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 20, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'My Pets',
                                        style: FlutterFlowTheme.of(context)
                                            .title3
                                            .override(
                                              fontFamily: 'RockoUltra',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                      InkWell(
                                        onTap: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  PetListWidget(),
                                            ),
                                          );
                                        },
                                        child: Text(
                                          'View All',
                                          style: FlutterFlowTheme.of(context)
                                              .title2
                                              .override(
                                                fontFamily: 'RockoUltra',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                fontSize: 14,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 12, 0, 0),
                                  child: StreamBuilder<List<PetsRecord>>(
                                    stream: queryPetsRecord(
                                      queryBuilder: (petsRecord) =>
                                          petsRecord.where('owner_uid',
                                              isEqualTo: currentUserReference),
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
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                              size: 50,
                                            ),
                                          ),
                                        );
                                      }
                                      List<PetsRecord> rowPetsRecordList =
                                          snapshot.data;
                                      if (rowPetsRecordList.isEmpty) {
                                        return Center(
                                          child: EmptyPetWidget(),
                                        );
                                      }
                                      return SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: List.generate(
                                              rowPetsRecordList.length,
                                              (rowIndex) {
                                            final rowPetsRecord =
                                                rowPetsRecordList[rowIndex];
                                            return Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(20, 0, 0, 16),
                                              child: InkWell(
                                                onTap: () async {
                                                  await Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          PetProfileWidget(
                                                        petRef: rowPetsRecord
                                                            .reference,
                                                      ),
                                                    ),
                                                  );
                                                },
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 8,
                                                        color:
                                                            Color(0xFFE4E4E4),
                                                        offset: Offset(0, 8),
                                                        spreadRadius: 4,
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            24),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                12, 16, 12, 16),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(16),
                                                          child:
                                                              CachedNetworkImage(
                                                            imageUrl:
                                                                rowPetsRecord
                                                                    .pictureUrl,
                                                            width: 120,
                                                            height: 90,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      8, 0, 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                rowPetsRecord
                                                                    .name,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .subtitle1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Cabin',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                      fontSize:
                                                                          21,
                                                                    ),
                                                              ),
                                                              if ((rowPetsRecord
                                                                      .sex) ==
                                                                  'female')
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child: FaIcon(
                                                                    FontAwesomeIcons
                                                                        .venus,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryColor,
                                                                    size: 24,
                                                                  ),
                                                                ),
                                                              if ((rowPetsRecord
                                                                      .sex) ==
                                                                  'male')
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child: FaIcon(
                                                                    FontAwesomeIcons
                                                                        .mars,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryColor,
                                                                    size: 24,
                                                                  ),
                                                                ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      8, 0, 0),
                                                          child: Text(
                                                            functions.countAgeString(
                                                                rowPetsRecord
                                                                    .birthdate),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Cabin',
                                                                  fontSize: 11,
                                                                ),
                                                          ),
                                                        ),
                                                        Text(
                                                          rowPetsRecord
                                                              .condition,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Cabin',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryColor,
                                                              ),
                                                        ),
                                                      ],
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
                          if ((FFAppState().isFeatureReady) == true)
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xFFDFE0EE),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 16, 20, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Your Schedule',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .title3
                                                    .override(
                                                      fontFamily: 'RockoUltra',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                      useGoogleFonts: false,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 8),
                                          child: StreamBuilder<
                                              List<PetSchedulesRecord>>(
                                            stream: queryPetSchedulesRecord(
                                              queryBuilder: (petSchedulesRecord) =>
                                                  petSchedulesRecord
                                                      .where('owner_uid',
                                                          isEqualTo:
                                                              currentUserReference)
                                                      .where('scheduled_at',
                                                          isGreaterThanOrEqualTo:
                                                              getCurrentTimestamp)
                                                      .orderBy('scheduled_at'),
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
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                      size: 50,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<PetSchedulesRecord>
                                                  columnPetSchedulesRecordList =
                                                  snapshot.data;
                                              if (columnPetSchedulesRecordList
                                                  .isEmpty) {
                                                return Center(
                                                  child:
                                                      EmptyScheduleNoPetWidget(),
                                                );
                                              }
                                              return Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: List.generate(
                                                    columnPetSchedulesRecordList
                                                        .length, (columnIndex) {
                                                  final columnPetSchedulesRecord =
                                                      columnPetSchedulesRecordList[
                                                          columnIndex];
                                                  return Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20, 8, 20, 8),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              dateTimeFormat(
                                                                  'MEd',
                                                                  columnPetSchedulesRecord
                                                                      .scheduledAt),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Cabin',
                                                                    color: Color(
                                                                        0xFF7F7F7F),
                                                                    fontSize:
                                                                        12,
                                                                  ),
                                                            ),
                                                            Text(
                                                              dateTimeFormat(
                                                                  'Hm',
                                                                  columnPetSchedulesRecord
                                                                      .scheduledAt),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Cabin',
                                                                    fontSize:
                                                                        16,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiaryColor,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            16),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12,
                                                                            12,
                                                                            12,
                                                                            12),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(16),
                                                                          child:
                                                                              Image.network(
                                                                            'https://i.ibb.co/wJWJgWW/3958832.jpg',
                                                                            width:
                                                                                48,
                                                                            height:
                                                                                48,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                                                              child: Text(
                                                                                columnPetSchedulesRecord.name,
                                                                                style: FlutterFlowTheme.of(context).subtitle1,
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                                                              child: Text(
                                                                                columnPetSchedulesRecord.description,
                                                                                style: FlutterFlowTheme.of(context).bodyText1,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Text(
                                                                              columnPetSchedulesRecord.duration.toString(),
                                                                              style: FlutterFlowTheme.of(context).subtitle1.override(
                                                                                    fontFamily: 'Cabin',
                                                                                    color: Color(0xFF343434),
                                                                                  ),
                                                                            ),
                                                                            Text(
                                                                              columnPetSchedulesRecord.durationUnit,
                                                                              style: FlutterFlowTheme.of(context).bodyText1,
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                }),
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
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
        ),
      ),
    );
  }
}
