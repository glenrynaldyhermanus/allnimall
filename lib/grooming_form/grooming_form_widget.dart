import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_calendar.dart';
import '../flutter_flow/flutter_flow_count_controller.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../grooming_summary/grooming_summary_widget.dart';
import '../select_geo_location/select_geo_location_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class GroomingFormWidget extends StatefulWidget {
  const GroomingFormWidget({Key key}) : super(key: key);

  @override
  _GroomingFormWidgetState createState() => _GroomingFormWidgetState();
}

class _GroomingFormWidgetState extends State<GroomingFormWidget> {
  DateTimeRange calendarSelectedDay;
  String dropDownPetsValue;
  String dropDownServiceValue;
  int countControllerValue;
  String dropDownTimeValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<CustomersRecord>(
      stream: CustomersRecord.getDocument(currentUserReference),
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
        final groomingFormCustomersRecord = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
            iconTheme:
                IconThemeData(color: FlutterFlowTheme.of(context).primaryColor),
            automaticallyImplyLeading: true,
            title: Text(
              'Grooming',
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
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Alamat',
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                            InkWell(
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        SelectGeoLocationWidget(),
                                  ),
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
                                    color: FlutterFlowTheme.of(context)
                                        .tertiaryColor,
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryColor,
                                      width: 2,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 0, 16, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            valueOrDefault<String>(
                                              groomingFormCustomersRecord
                                                  .orderAddress,
                                              'Select location',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle1,
                                          ),
                                        ),
                                        Icon(
                                          Icons.location_on_rounded,
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
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Pet',
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: StreamBuilder<
                                        List<ServiceCategoriesRecord>>(
                                      stream: queryServiceCategoriesRecord(
                                        queryBuilder:
                                            (serviceCategoriesRecord) =>
                                                serviceCategoriesRecord.where(
                                                    'is_active',
                                                    isEqualTo: true),
                                        singleRecord: true,
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
                                        List<ServiceCategoriesRecord>
                                            dropDownPetsServiceCategoriesRecordList =
                                            snapshot.data;
                                        // Return an empty Container when the document does not exist.
                                        if (snapshot.data.isEmpty) {
                                          return Container();
                                        }
                                        final dropDownPetsServiceCategoriesRecord =
                                            dropDownPetsServiceCategoriesRecordList
                                                    .isNotEmpty
                                                ? dropDownPetsServiceCategoriesRecordList
                                                    .first
                                                : null;
                                        return FlutterFlowDropDown(
                                          initialOption: dropDownPetsValue ??=
                                              'Kucing',
                                          options: ['Kucing'],
                                          onChanged: (val) => setState(
                                              () => dropDownPetsValue = val),
                                          width: 130,
                                          height: 60,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .subtitle1,
                                          hintText: 'Pilih Jenis Peliharaan',
                                          fillColor: Colors.white,
                                          elevation: 2,
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryColor,
                                          borderWidth: 2,
                                          borderRadius: 8,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 6, 20, 6),
                                          hidesUnderline: true,
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Servis',
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: FlutterFlowDropDown(
                                      initialOption: dropDownServiceValue ??=
                                          'Mandi Kutu dan Jamur',
                                      options: ['Mandi Kutu dan Jamur'],
                                      onChanged: (val) => setState(
                                          () => dropDownServiceValue = val),
                                      width: 130,
                                      height: 60,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle1,
                                      hintText: 'Pilih Servis',
                                      fillColor: Colors.white,
                                      elevation: 2,
                                      borderColor: FlutterFlowTheme.of(context)
                                          .secondaryColor,
                                      borderWidth: 2,
                                      borderRadius: 8,
                                      margin: EdgeInsetsDirectional.fromSTEB(
                                          20, 6, 20, 6),
                                      hidesUnderline: true,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Jumlah pet',
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                child: Container(
                                  width: 160,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                    shape: BoxShape.rectangle,
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryColor,
                                      width: 2,
                                    ),
                                  ),
                                  child: FlutterFlowCountController(
                                    decrementIconBuilder: (enabled) => FaIcon(
                                      FontAwesomeIcons.minus,
                                      color: enabled
                                          ? Color(0xDD000000)
                                          : Color(0xFFEEEEEE),
                                      size: 20,
                                    ),
                                    incrementIconBuilder: (enabled) => FaIcon(
                                      FontAwesomeIcons.plus,
                                      color: enabled
                                          ? FlutterFlowTheme.of(context)
                                              .secondaryColor
                                          : Color(0xFFEEEEEE),
                                      size: 20,
                                    ),
                                    countBuilder: (count) => Text(
                                      count.toString(),
                                      style: FlutterFlowTheme.of(context)
                                          .subtitle1,
                                    ),
                                    count: countControllerValue ??= 1,
                                    updateCount: (count) => setState(
                                        () => countControllerValue = count),
                                    stepSize: 1,
                                    minimum: 1,
                                    maximum: 6,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Tanggal grooming',
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                              FlutterFlowCalendar(
                                color:
                                    FlutterFlowTheme.of(context).secondaryColor,
                                weekFormat: false,
                                weekStartsMonday: true,
                                initialDate: getCurrentTimestamp,
                                onChange: (DateTimeRange newSelectedDate) {
                                  setState(() =>
                                      calendarSelectedDay = newSelectedDate);
                                },
                                titleStyle: TextStyle(),
                                dayOfWeekStyle: TextStyle(),
                                dateStyle: TextStyle(),
                                selectedDateStyle: TextStyle(),
                                inactiveDateStyle: TextStyle(),
                                locale:
                                    FFLocalizations.of(context).languageCode,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Waktu grooming',
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: StreamBuilder<List<ServicesRecord>>(
                                      stream: queryServicesRecord(
                                        queryBuilder: (servicesRecord) =>
                                            servicesRecord.where('is_active',
                                                isEqualTo: true),
                                        singleRecord: true,
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
                                        List<ServicesRecord>
                                            dropDownTimeServicesRecordList =
                                            snapshot.data;
                                        // Return an empty Container when the document does not exist.
                                        if (snapshot.data.isEmpty) {
                                          return Container();
                                        }
                                        final dropDownTimeServicesRecord =
                                            dropDownTimeServicesRecordList
                                                    .isNotEmpty
                                                ? dropDownTimeServicesRecordList
                                                    .first
                                                : null;
                                        return FlutterFlowDropDown(
                                          initialOption: dropDownTimeValue ??=
                                              'Pagi',
                                          options: [
                                            'Pagi',
                                            'Siang',
                                            'Sore',
                                            'Malam'
                                          ],
                                          onChanged: (val) => setState(
                                              () => dropDownTimeValue = val),
                                          width: 130,
                                          height: 60,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .subtitle1,
                                          hintText: 'Pilih Waktu',
                                          fillColor: Colors.white,
                                          elevation: 2,
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryColor,
                                          borderWidth: 2,
                                          borderRadius: 8,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 6, 20, 6),
                                          hidesUnderline: true,
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => GroomingSummaryWidget(
                                      customerAddress: valueOrDefault(
                                          currentUserDocument?.orderAddress,
                                          ''),
                                      service: dropDownServiceValue,
                                      quantity: countControllerValue,
                                      customerLatLng:
                                          currentUserDocument?.orderLatlng,
                                      scheduleDate: calendarSelectedDay?.end,
                                      scheduleTime: dropDownTimeValue,
                                      petCategory: dropDownPetsValue,
                                    ),
                                  ),
                                );
                              },
                              text: 'Panggil Groomer',
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 56,
                                color:
                                    FlutterFlowTheme.of(context).secondaryColor,
                                textStyle: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'RockoUltra',
                                      color: FlutterFlowTheme.of(context)
                                          .tertiaryColor,
                                      fontSize: 16,
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
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
