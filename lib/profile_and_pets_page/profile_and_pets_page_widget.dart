import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../new_pet_page/new_pet_page_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileAndPetsPageWidget extends StatefulWidget {
  ProfileAndPetsPageWidget({Key key}) : super(key: key);

  @override
  _ProfileAndPetsPageWidgetState createState() =>
      _ProfileAndPetsPageWidgetState();
}

class _ProfileAndPetsPageWidgetState extends State<ProfileAndPetsPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.tertiaryColor,
        automaticallyImplyLeading: true,
        title: Text(
          'profile n pets',
          style: FlutterFlowTheme.title1.override(
            fontFamily: 'Gorditas',
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.tertiaryColor,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NewPetPageWidget(),
            ),
          );
        },
        backgroundColor: FlutterFlowTheme.secondaryColor,
        icon: Icon(
          Icons.add_rounded,
        ),
        elevation: 8,
        label: Text(
          'new pet',
          style: FlutterFlowTheme.title2.override(
            fontFamily: 'Gorditas',
            color: FlutterFlowTheme.tertiaryColor,
            fontSize: 16,
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.tertiaryColor,
        ),
        child: StreamBuilder<List<PetsRecord>>(
          stream: queryPetsRecord(),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: SpinKitRipple(
                    color: FlutterFlowTheme.secondaryColor,
                    size: 50,
                  ),
                ),
              );
            }
            List<PetsRecord> columnPetsRecordList = snapshot.data;
            // Customize what your widget looks like with no query results.
            if (snapshot.data.isEmpty) {
              return Container(
                height: 100,
                child: Center(
                  child: Text('No results.'),
                ),
              );
            }
            return Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                      List.generate(columnPetsRecordList.length, (columnIndex) {
                    final columnPetsRecord = columnPetsRecordList[columnIndex];
                    return Padding(
                      padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(28),
                            child: CachedNetworkImage(
                              imageUrl: columnPetsRecord.pictureUrl,
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        columnPetsRecord.name,
                                        style:
                                            FlutterFlowTheme.subtitle1.override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.primaryColor,
                                          fontSize: 21,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(8, 0, 0, 0),
                                        child: FaIcon(
                                          FontAwesomeIcons.venusMars,
                                          color: FlutterFlowTheme.primaryColor,
                                          size: 24,
                                        ),
                                      )
                                    ],
                                  ),
                                  Text(
                                    dateTimeFormat(
                                        'relative', columnPetsRecord.birthdate),
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 11,
                                    ),
                                  ),
                                  Text(
                                    columnPetsRecord.condition,
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.secondaryColor,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: FlutterFlowTheme.primaryColor,
                            size: 24,
                          )
                        ],
                      ),
                    );
                  }),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
