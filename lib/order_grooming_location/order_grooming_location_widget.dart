import '../flutter_flow/flutter_flow_google_map.dart';
import '../flutter_flow/flutter_flow_place_picker.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/place.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderGroomingLocationWidget extends StatefulWidget {
  const OrderGroomingLocationWidget({Key? key}) : super(key: key);

  @override
  _OrderGroomingLocationWidgetState createState() =>
      _OrderGroomingLocationWidgetState();
}

class _OrderGroomingLocationWidgetState
    extends State<OrderGroomingLocationWidget> {
  LatLng? currentUserLocationValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  TextEditingController? textController;
  var placePickerValue = FFPlace();

  @override
  void initState() {
    super.initState();
    getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0), cached: true)
        .then((loc) => setState(() => currentUserLocationValue = loc));
    textController = TextEditingController(text: placePickerValue.address);
  }

  @override
  void dispose() {
    textController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (currentUserLocationValue == null) {
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
    return Scaffold(
      key: scaffoldKey,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
        iconTheme:
            IconThemeData(color: FlutterFlowTheme.of(context).primaryColor),
        automaticallyImplyLeading: true,
        title: Text(
          'Lokasi',
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
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: TextFormField(
                    controller: textController,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'Tekan cari',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 0,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 0,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 0,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 0,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      filled: true,
                      fillColor: Color(0x7FDBDCFF),
                    ),
                    style: FlutterFlowTheme.of(context).subtitle2,
                  ),
                ),
                FlutterFlowPlacePicker(
                  iOSGoogleMapsApiKey:
                      'AIzaSyAX9Kl_giqmL8K8JGZlFN6RaPLxq6g6Xp0',
                  androidGoogleMapsApiKey:
                      'AIzaSyBydXSoppRjB-gdhCkIckjS0O_t9hzMgtw',
                  webGoogleMapsApiKey:
                      'AIzaSyAVmO1JRU552L2OhuDi0sdRhwgleBPNO3c',
                  onSelect: (place) => setState(() {
                    placePickerValue = place;
                    textController!.text = place.address;
                    var newPosition = CameraPosition(
                        target: placePickerValue.latLng.toGoogleMaps(),
                        zoom: 16);
                    CameraUpdate update = CameraUpdate.newCameraPosition(
                        newPosition);
                    CameraUpdate zoom = CameraUpdate.zoomTo(16);
                    googleMapsController.future.then((controller) {
                      controller.animateCamera(update);
                    });
                  }),
                  defaultText: 'Cari',
                  icon: Icon(
                    Icons.search,
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    size: 14,
                  ),
                  buttonOptions: FFButtonOptions(
                    width: 80,
                    height: 60,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Cabin',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    elevation: 0
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 1,
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: FlutterFlowGoogleMap(
                        controller: googleMapsController,
                        onCameraIdle: (latLng) => googleMapsCenter = latLng,
                        initialLocation: googleMapsCenter ??=
                            currentUserLocationValue!,
                        markerColor: GoogleMarkerColor.violet,
                        mapType: MapType.normal,
                        style: GoogleMapStyle.standard,
                        initialZoom: 14,
                        allowInteraction: true,
                        allowZoom: true,
                        showZoomControls: true,
                        showLocation: true,
                        showCompass: false,
                        showMapToolbar: false,
                        showTraffic: false,
                        centerMapOnMarkerTap: true,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                        child: Icon(
                          Icons.location_on_rounded,
                          color: FlutterFlowTheme.of(context).primaryColor,
                          size: 60,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).tertiaryColor,
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        if ((textController!.text != null) &&
                            (textController!.text.trim() != '')) {
                          setState(() =>
                              FFAppState().localAddress = textController!.text);
                          setState(() =>
                              FFAppState().localLatLng = googleMapsCenter);
                          setState(() =>
                              FFAppState().localCity = placePickerValue.city);
                          Navigator.of(context).pop();
                        } else {
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: Text('Set Alamat Gagal'),
                                content:
                                    Text('Mohon masukkan alamat lengkap kamu'),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext),
                                    child: Text('Ok'),
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      },
                      text: 'Pilih lokasi',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 48,
                        color: FlutterFlowTheme.of(context).secondaryColor,
                        textStyle: FlutterFlowTheme.of(context).title3.override(
                              fontFamily: 'RockoUltra',
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              fontSize: 16,
                              useGoogleFonts: false,
                            ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(4),
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
  }
}
