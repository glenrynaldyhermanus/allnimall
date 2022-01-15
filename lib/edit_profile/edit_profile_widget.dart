import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfileWidget extends StatefulWidget {
  const EditProfileWidget({Key key}) : super(key: key);

  @override
  _EditProfileWidgetState createState() => _EditProfileWidgetState();
}

class _EditProfileWidgetState extends State<EditProfileWidget> {
  DateTime datePicked;
  String uploadedFileUrl = '';
  TextEditingController nameFieldController;
  String sexSelectionValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    nameFieldController = TextEditingController(text: currentUserDisplayName);
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
          'Edit Profile',
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
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.tertiaryColor,
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(32, 20, 32, 20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                    child: Stack(
                      children: [
                        AuthUserStreamWidget(
                          child: InkWell(
                            onTap: () async {
                              final selectedMedia =
                                  await selectMediaWithSourceBottomSheet(
                                context: context,
                                maxWidth: 720.00,
                                maxHeight: 720.00,
                                allowPhoto: true,
                              );
                              if (selectedMedia != null &&
                                  validateFileFormat(
                                      selectedMedia.storagePath, context)) {
                                showUploadMessage(context, 'Uploading file...',
                                    showLoading: true);
                                final downloadUrl = await uploadData(
                                    selectedMedia.storagePath,
                                    selectedMedia.bytes);
                                ScaffoldMessenger.of(context)
                                    .hideCurrentSnackBar();
                                if (downloadUrl != null) {
                                  setState(() => uploadedFileUrl = downloadUrl);
                                  showUploadMessage(context, 'Success!');
                                } else {
                                  showUploadMessage(
                                      context, 'Failed to upload media');
                                  return;
                                }
                              }
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(32),
                              child: Image.network(
                                currentUserPhoto,
                                width: 64,
                                height: 64,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        if ((uploadedFileUrl) != '')
                          ClipRRect(
                            borderRadius: BorderRadius.circular(32),
                            child: Image.network(
                              uploadedFileUrl,
                              width: 64,
                              height: 64,
                              fit: BoxFit.cover,
                            ),
                          ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      if ((uploadedFileUrl) == '')
                        Text(
                          'Change picture',
                          style: FlutterFlowTheme.subtitle2,
                        ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                    child: AuthUserStreamWidget(
                      child: TextFormField(
                        controller: nameFieldController,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Pet\'s name',
                          hintStyle: FlutterFlowTheme.subtitle1,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.secondaryColor,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.secondaryColor,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(16, 24, 16, 24),
                        ),
                        style: FlutterFlowTheme.subtitle1,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                    child: InkWell(
                      onTap: () async {
                        await DatePicker.showDatePicker(
                          context,
                          showTitleActions: true,
                          onConfirm: (date) {
                            setState(() => datePicked = date);
                          },
                          currentTime: getCurrentTimestamp,
                        );
                      },
                      child: Material(
                        color: Colors.transparent,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 60,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.tertiaryColor,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: FlutterFlowTheme.secondaryColor,
                              width: 2,
                            ),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (!(functions.isDatePicked(datePicked)) ??
                                    true)
                                  Expanded(
                                    child: AuthUserStreamWidget(
                                      child: Text(
                                        valueOrDefault<String>(
                                          dateTimeFormat('yMMMd',
                                              currentUserDocument?.birthdate),
                                          'Birthdate',
                                        ),
                                        style: FlutterFlowTheme.subtitle1,
                                      ),
                                    ),
                                  ),
                                if (functions.isDatePicked(datePicked) ?? true)
                                  Expanded(
                                    child: Text(
                                      valueOrDefault<String>(
                                        dateTimeFormat('yMMMd', datePicked),
                                        'Pet\'s birthdate',
                                      ),
                                      style: FlutterFlowTheme.subtitle1,
                                    ),
                                  ),
                                FaIcon(
                                  FontAwesomeIcons.calendarCheck,
                                  color: FlutterFlowTheme.secondaryColor,
                                  size: 24,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                    child: AuthUserStreamWidget(
                      child: FlutterFlowDropDown(
                        initialOption: sexSelectionValue ??=
                            currentUserDocument?.gender,
                        options: ['Gender', 'Female', 'Male'].toList(),
                        onChanged: (val) =>
                            setState(() => sexSelectionValue = val),
                        width: double.infinity,
                        textStyle: FlutterFlowTheme.subtitle1,
                        fillColor: Colors.white,
                        elevation: 0,
                        borderColor: FlutterFlowTheme.secondaryColor,
                        borderWidth: 2,
                        borderRadius: 8,
                        margin: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
                        hidesUnderline: true,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 64, 0, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        final usersUpdateData = createUsersRecordData(
                          birthdate: datePicked,
                          displayName: nameFieldController.text,
                          gender: sexSelectionValue,
                          photoUrl: uploadedFileUrl,
                        );
                        await currentUserReference.update(usersUpdateData);
                        Navigator.pop(context);
                      },
                      text: 'Save',
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
