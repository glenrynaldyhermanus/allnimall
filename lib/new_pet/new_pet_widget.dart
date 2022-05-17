import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
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

class NewPetWidget extends StatefulWidget {
  const NewPetWidget({
    Key key,
    this.pet,
  }) : super(key: key);

  final DocumentReference pet;

  @override
  _NewPetWidgetState createState() => _NewPetWidgetState();
}

class _NewPetWidgetState extends State<NewPetWidget> {
  DateTime datePicked;
  String uploadedFileUrl = '';
  TextEditingController nameFieldController;
  String sexSelectionValue;
  String weightUnitSelectionValue;
  TextEditingController weightFieldController;
  TextEditingController breedFieldController;
  bool vaccinCheckValue;
  bool sterileCheckValue;
  bool fungusCheckValue;
  bool fleaCheckValue;
  bool wormCheckValue;
  bool earmiteCheckValue;
  bool scabiesCheckValue;
  bool diarrheaCheckValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    breedFieldController = TextEditingController();
    nameFieldController = TextEditingController();
    weightFieldController = TextEditingController();
  }

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
          'New Pet',
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
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).tertiaryColor,
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
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 48,
                          buttonSize: 64,
                          icon: FaIcon(
                            FontAwesomeIcons.cameraRetro,
                            color: FlutterFlowTheme.of(context).secondaryColor,
                            size: 48,
                          ),
                          onPressed: () async {
                            final selectedMedia =
                                await selectMediaWithSourceBottomSheet(
                              context: context,
                              maxWidth: 720.00,
                              maxHeight: 720.00,
                              allowPhoto: true,
                              pickerFontFamily: 'Cabin',
                            );
                            if (selectedMedia != null &&
                                selectedMedia.every((m) => validateFileFormat(
                                    m.storagePath, context))) {
                              showUploadMessage(
                                context,
                                'Uploading file...',
                                showLoading: true,
                              );
                              final downloadUrls = (await Future.wait(
                                      selectedMedia.map((m) async =>
                                          await uploadData(
                                              m.storagePath, m.bytes))))
                                  .where((u) => u != null)
                                  .toList();
                              ScaffoldMessenger.of(context)
                                  .hideCurrentSnackBar();
                              if (downloadUrls != null &&
                                  downloadUrls.length == selectedMedia.length) {
                                setState(
                                    () => uploadedFileUrl = downloadUrls.first);
                                showUploadMessage(
                                  context,
                                  'Success!',
                                );
                              } else {
                                showUploadMessage(
                                  context,
                                  'Failed to upload media',
                                );
                                return;
                              }
                            }
                          },
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
                          'Add picture',
                          style: FlutterFlowTheme.of(context).subtitle2,
                        ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                    child: TextFormField(
                      controller: nameFieldController,
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'Pet\'s name',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).secondaryColor,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).secondaryColor,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(16, 24, 16, 24),
                      ),
                      style: FlutterFlowTheme.of(context).subtitle1,
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
                          minTime: DateTime(0, 0, 0),
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
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color:
                                  FlutterFlowTheme.of(context).secondaryColor,
                              width: 2,
                            ),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Text(
                                    valueOrDefault<String>(
                                      dateTimeFormat('yMMMd', datePicked),
                                      'Pet\'s birthdate',
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).subtitle1,
                                  ),
                                ),
                                FaIcon(
                                  FontAwesomeIcons.calendarCheck,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryColor,
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
                    child: FlutterFlowDropDown(
                      options: ['Pet\'s sex', 'Female', 'Male'].toList(),
                      onChanged: (val) =>
                          setState(() => sexSelectionValue = val),
                      width: double.infinity,
                      textStyle: FlutterFlowTheme.of(context).subtitle1,
                      fillColor: Colors.white,
                      elevation: 0,
                      borderColor: FlutterFlowTheme.of(context).secondaryColor,
                      borderWidth: 2,
                      borderRadius: 8,
                      margin: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
                      hidesUnderline: true,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: weightFieldController,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Pet\'s weight',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryColor,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryColor,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  16, 24, 16, 24),
                            ),
                            style: FlutterFlowTheme.of(context).subtitle1,
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                          child: FlutterFlowDropDown(
                            options: ['gr', 'kg'].toList(),
                            onChanged: (val) =>
                                setState(() => weightUnitSelectionValue = val),
                            width: 88,
                            height: 50,
                            textStyle: FlutterFlowTheme.of(context).subtitle1,
                            fillColor: Colors.white,
                            elevation: 2,
                            borderColor: Colors.transparent,
                            borderWidth: 0,
                            borderRadius: 0,
                            margin:
                                EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                            hidesUnderline: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                    child: TextFormField(
                      controller: breedFieldController,
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'Pet\'s breed',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).secondaryColor,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).secondaryColor,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(16, 24, 16, 24),
                      ),
                      style: FlutterFlowTheme.of(context).subtitle1,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                      child: Text(
                        'Conditions',
                        style: FlutterFlowTheme.of(context).title3,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1, 0),
                    child: Text(
                      'Has your pet take any of these medical actions?',
                      style: FlutterFlowTheme.of(context).bodyText2,
                    ),
                  ),
                  Theme(
                    data: ThemeData(
                      unselectedWidgetColor: Color(0xFF707070),
                    ),
                    child: CheckboxListTile(
                      value: vaccinCheckValue ??= false,
                      onChanged: (newValue) =>
                          setState(() => vaccinCheckValue = newValue),
                      title: Text(
                        'Vaccinated',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                      tileColor: Color(0xFFF5F5F5),
                      activeColor: FlutterFlowTheme.of(context).primaryColor,
                      dense: false,
                      controlAffinity: ListTileControlAffinity.trailing,
                    ),
                  ),
                  Theme(
                    data: ThemeData(
                      unselectedWidgetColor: Color(0xFF707070),
                    ),
                    child: CheckboxListTile(
                      value: sterileCheckValue ??= false,
                      onChanged: (newValue) =>
                          setState(() => sterileCheckValue = newValue),
                      title: Text(
                        'Sterilised',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                      tileColor: Color(0xFFF5F5F5),
                      activeColor: FlutterFlowTheme.of(context).primaryColor,
                      dense: false,
                      controlAffinity: ListTileControlAffinity.trailing,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                      child: Text(
                        'Issues',
                        style: FlutterFlowTheme.of(context).title3,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1, 0),
                    child: Text(
                      'Does your pet having these issues?',
                      style: FlutterFlowTheme.of(context).bodyText2,
                    ),
                  ),
                  Theme(
                    data: ThemeData(
                      unselectedWidgetColor: Color(0xFF707070),
                    ),
                    child: CheckboxListTile(
                      value: fungusCheckValue ??= false,
                      onChanged: (newValue) =>
                          setState(() => fungusCheckValue = newValue),
                      title: Text(
                        'Fungus',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                      tileColor: Color(0xFFF5F5F5),
                      activeColor: FlutterFlowTheme.of(context).primaryColor,
                      dense: false,
                      controlAffinity: ListTileControlAffinity.trailing,
                    ),
                  ),
                  Theme(
                    data: ThemeData(
                      unselectedWidgetColor: Color(0xFF707070),
                    ),
                    child: CheckboxListTile(
                      value: fleaCheckValue ??= false,
                      onChanged: (newValue) =>
                          setState(() => fleaCheckValue = newValue),
                      title: Text(
                        'Fleas',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                      tileColor: Color(0xFFF5F5F5),
                      activeColor: FlutterFlowTheme.of(context).primaryColor,
                      dense: false,
                      controlAffinity: ListTileControlAffinity.trailing,
                    ),
                  ),
                  Theme(
                    data: ThemeData(
                      unselectedWidgetColor: Color(0xFF707070),
                    ),
                    child: CheckboxListTile(
                      value: wormCheckValue ??= false,
                      onChanged: (newValue) =>
                          setState(() => wormCheckValue = newValue),
                      title: Text(
                        'Worms',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                      tileColor: Color(0xFFF5F5F5),
                      activeColor: FlutterFlowTheme.of(context).primaryColor,
                      dense: false,
                      controlAffinity: ListTileControlAffinity.trailing,
                    ),
                  ),
                  Theme(
                    data: ThemeData(
                      unselectedWidgetColor: Color(0xFF707070),
                    ),
                    child: CheckboxListTile(
                      value: earmiteCheckValue ??= false,
                      onChanged: (newValue) =>
                          setState(() => earmiteCheckValue = newValue),
                      title: Text(
                        'Earmites',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                      tileColor: Color(0xFFF5F5F5),
                      activeColor: FlutterFlowTheme.of(context).primaryColor,
                      dense: false,
                      controlAffinity: ListTileControlAffinity.trailing,
                    ),
                  ),
                  Theme(
                    data: ThemeData(
                      unselectedWidgetColor: Color(0xFF707070),
                    ),
                    child: CheckboxListTile(
                      value: scabiesCheckValue ??= false,
                      onChanged: (newValue) =>
                          setState(() => scabiesCheckValue = newValue),
                      title: Text(
                        'Scabies',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                      tileColor: Color(0xFFF5F5F5),
                      activeColor: FlutterFlowTheme.of(context).primaryColor,
                      dense: false,
                      controlAffinity: ListTileControlAffinity.trailing,
                    ),
                  ),
                  Theme(
                    data: ThemeData(
                      unselectedWidgetColor: Color(0xFF707070),
                    ),
                    child: CheckboxListTile(
                      value: diarrheaCheckValue ??= false,
                      onChanged: (newValue) =>
                          setState(() => diarrheaCheckValue = newValue),
                      title: Text(
                        'Diarrhea',
                        style: FlutterFlowTheme.of(context).subtitle1,
                      ),
                      tileColor: Color(0xFFF5F5F5),
                      activeColor: FlutterFlowTheme.of(context).primaryColor,
                      dense: false,
                      controlAffinity: ListTileControlAffinity.trailing,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 64, 0, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        final petsCreateData = createPetsRecordData(
                          name: nameFieldController.text,
                          ownerUid: currentUserReference,
                          ownerName: currentUserDisplayName,
                          weight: double.parse(weightFieldController.text),
                          pictureUrl: uploadedFileUrl,
                          sex: sexSelectionValue,
                          hasVaccinated: vaccinCheckValue,
                          hasSterilised: sterileCheckValue,
                          weightUnit: weightUnitSelectionValue,
                          breed: breedFieldController.text,
                          hasFungus: fungusCheckValue,
                          hasFleas: fleaCheckValue,
                          hasWorms: wormCheckValue,
                          hasEarmites: earmiteCheckValue,
                          hasScabies: scabiesCheckValue,
                          hasDiarrhea: diarrheaCheckValue,
                          condition: functions.checkConditions(
                              fungusCheckValue,
                              fleaCheckValue,
                              wormCheckValue,
                              earmiteCheckValue,
                              scabiesCheckValue,
                              diarrheaCheckValue),
                          birthdate: datePicked,
                        );
                        await PetsRecord.collection.doc().set(petsCreateData);
                        Navigator.pop(context);
                      },
                      text: 'Add pet',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 56,
                        color: FlutterFlowTheme.of(context).secondaryColor,
                        textStyle: FlutterFlowTheme.of(context).title3.override(
                              fontFamily: 'RockoUltra',
                              color: FlutterFlowTheme.of(context).tertiaryColor,
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
