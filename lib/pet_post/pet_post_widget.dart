import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../components/pet_weight_form_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/upload_media.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class PetPostWidget extends StatefulWidget {
  const PetPostWidget({
    Key? key,
    this.petRef,
  }) : super(key: key);

  final DocumentReference? petRef;

  @override
  _PetPostWidgetState createState() => _PetPostWidgetState();
}

class _PetPostWidgetState extends State<PetPostWidget> {
  String uploadedFileUrl = '';
  TextEditingController? textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  void dispose() {
    textController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<PetsRecord>(
      stream: PetsRecord.getDocument(widget.petRef!),
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
        final petPostPetsRecord = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
            iconTheme:
                IconThemeData(color: FlutterFlowTheme.of(context).primaryColor),
            automaticallyImplyLeading: true,
            title: Text(
              'Create Post',
              style: FlutterFlowTheme.of(context).title3.override(
                    fontFamily: 'RockoUltra',
                    color: FlutterFlowTheme.of(context).primaryColor,
                    useGoogleFonts: false,
                  ),
            ),
            actions: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                  child: InkWell(
                    onTap: () async {
                      final petPostsCreateData = createPetPostsRecordData(
                        petUid: petPostPetsRecord.reference,
                        petName: petPostPetsRecord.name,
                        petPictureUrl: petPostPetsRecord.pictureUrl,
                        image: uploadedFileUrl,
                        text: textController!.text,
                        createdAt: getCurrentTimestamp,
                        numFav: 0,
                      );
                      await PetPostsRecord.collection
                          .doc()
                          .set(petPostsCreateData);
                      context.pop();
                    },
                    child: Text(
                      'Post',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily: 'Cabin',
                            color: FlutterFlowTheme.of(context).secondaryColor,
                          ),
                    ),
                  ),
                ),
              ),
            ],
            centerTitle: true,
            elevation: 0,
          ),
          backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
          body: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Color(0xFFF5F5F5),
                    elevation: 6,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(18),
                                child: Image.network(
                                  petPostPetsRecord.pictureUrl!,
                                  width: 36,
                                  height: 36,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                                child: Text(
                                  petPostPetsRecord.name!,
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle1
                                      .override(
                                        fontFamily: 'Cabin',
                                        fontSize: 20,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 4, 20, 4),
                          child: TextFormField(
                            controller: textController,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Tell us your updates...',
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              errorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedErrorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).subtitle2,
                          ),
                        ),
                        if (uploadedFileUrl != '')
                          Image.network(
                            uploadedFileUrl,
                            width: double.infinity,
                            height: 240,
                            fit: BoxFit.cover,
                          ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(1, 0, 1, 0),
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
                                    selectedMedia.every((m) =>
                                        validateFileFormat(
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
                                      .map((u) => u!)
                                      .toList();
                                  ScaffoldMessenger.of(context)
                                      .hideCurrentSnackBar();
                                  if (downloadUrls.length ==
                                      selectedMedia.length) {
                                    setState(() =>
                                        uploadedFileUrl = downloadUrls.first);
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
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Divider(
                                    height: 1,
                                    thickness: 1,
                                    color: Color(0xFFE7E7E7),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 16, 20, 16),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Icon(
                                          Icons.image_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryColor,
                                          size: 24,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8, 0, 0, 0),
                                          child: Text(
                                            'Photo',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          if (FFAppState().isFeatureReady == true)
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(1, 0, 1, 0),
                              child: InkWell(
                                onTap: () async {
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    context: context,
                                    builder: (context) {
                                      return Padding(
                                        padding:
                                            MediaQuery.of(context).viewInsets,
                                        child: PetWeightFormWidget(),
                                      );
                                    },
                                  ).then((value) => setState(() {}));
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Divider(
                                      height: 1,
                                      thickness: 1,
                                      color: Color(0xFFE7E7E7),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 16, 20, 16),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            Icons.scanner,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            size: 24,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8, 0, 0, 0),
                                            child: Text(
                                              'Update weight',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          if (FFAppState().isFeatureReady == true)
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(1, 0, 1, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Divider(
                                    height: 1,
                                    thickness: 1,
                                    color: Color(0xFFE7E7E7),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 16, 20, 16),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Icon(
                                          Icons.healing,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryColor,
                                          size: 24,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8, 0, 0, 0),
                                          child: Text(
                                            'Update condition',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          if (FFAppState().isFeatureReady == true)
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(1, 0, 1, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Divider(
                                    height: 1,
                                    thickness: 1,
                                    color: Color(0xFFE7E7E7),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 16, 20, 16),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Icon(
                                          Icons.emoji_emotions,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          size: 24,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8, 0, 0, 0),
                                          child: Text(
                                            'Mood',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
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
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
