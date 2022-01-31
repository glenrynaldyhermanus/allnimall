import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/push_notifications/push_notifications_util.dart';
import '../flutter_flow/flutter_flow_calendar.dart';
import '../flutter_flow/flutter_flow_count_controller.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../grooming_detail/grooming_detail_widget.dart';
import '../select_geo_location/select_geo_location_widget.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
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
  OrdersRecord order;
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
    return StreamBuilder<UsersRecord>(
      stream: UsersRecord.getDocument(currentUserReference),
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
        final groomingFormUsersRecord = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.tertiaryColor,
            iconTheme: IconThemeData(color: FlutterFlowTheme.primaryColor),
            automaticallyImplyLeading: true,
            title: Text(
              'Grooming',
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
                        InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SelectGeoLocationWidget(),
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
                                color: FlutterFlowTheme.tertiaryColor,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: FlutterFlowTheme.secondaryColor,
                                  width: 2,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 0, 16, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        valueOrDefault<String>(
                                          groomingFormUsersRecord.orderAddress,
                                          'Select location',
                                        ),
                                        style: FlutterFlowTheme.subtitle1,
                                      ),
                                    ),
                                    Icon(
                                      Icons.location_on_rounded,
                                      color: FlutterFlowTheme.secondaryColor,
                                      size: 24,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                                child: StreamBuilder<List<CategoriesRecord>>(
                                  stream: queryCategoriesRecord(
                                    queryBuilder: (categoriesRecord) =>
                                        categoriesRecord.where('is_active',
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
                                                FlutterFlowTheme.primaryColor,
                                            size: 50,
                                          ),
                                        ),
                                      );
                                    }
                                    List<CategoriesRecord>
                                        dropDownPetsCategoriesRecordList =
                                        snapshot.data;
                                    final dropDownPetsCategoriesRecord =
                                        dropDownPetsCategoriesRecordList
                                                .isNotEmpty
                                            ? dropDownPetsCategoriesRecordList
                                                .first
                                            : null;
                                    return FlutterFlowDropDown(
                                      options: ['Select pets', 'Cats'].toList(),
                                      onChanged: (val) => setState(
                                          () => dropDownPetsValue = val),
                                      width: 130,
                                      height: 60,
                                      textStyle: FlutterFlowTheme.subtitle1,
                                      fillColor: Colors.white,
                                      elevation: 2,
                                      borderColor:
                                          FlutterFlowTheme.secondaryColor,
                                      borderWidth: 2,
                                      borderRadius: 8,
                                      margin: EdgeInsetsDirectional.fromSTEB(
                                          20, 6, 20, 6),
                                      hidesUnderline: true,
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                                child: FlutterFlowDropDown(
                                  options: ['Select service', 'Mandi lengkap']
                                      .toList(),
                                  onChanged: (val) => setState(
                                      () => dropDownServiceValue = val),
                                  width: 130,
                                  height: 60,
                                  textStyle: FlutterFlowTheme.subtitle1,
                                  fillColor: Colors.white,
                                  elevation: 2,
                                  borderColor: FlutterFlowTheme.secondaryColor,
                                  borderWidth: 2,
                                  borderRadius: 8,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      20, 6, 20, 6),
                                  hidesUnderline: true,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Number of pets',
                                style: FlutterFlowTheme.bodyText1,
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
                                      color: FlutterFlowTheme.secondaryColor,
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
                                          ? FlutterFlowTheme.secondaryColor
                                          : Color(0xFFEEEEEE),
                                      size: 20,
                                    ),
                                    countBuilder: (count) => Text(
                                      count.toString(),
                                      style: FlutterFlowTheme.subtitle1,
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
                                'Grooming date',
                                style: FlutterFlowTheme.bodyText1,
                              ),
                              FlutterFlowCalendar(
                                color: FlutterFlowTheme.secondaryColor,
                                weekFormat: false,
                                weekStartsMonday: false,
                                onChange: (DateTimeRange newSelectedDate) {
                                  setState(() =>
                                      calendarSelectedDay = newSelectedDate);
                                },
                                titleStyle: TextStyle(),
                                dayOfWeekStyle: TextStyle(),
                                dateStyle: TextStyle(),
                                selectedDateStyle: TextStyle(),
                                inactiveDateStyle: TextStyle(),
                              ),
                            ],
                          ),
                        ),
                        StreamBuilder<List<UsersRecord>>(
                          stream: queryUsersRecord(
                            queryBuilder: (usersRecord) =>
                                usersRecord.where('role', isEqualTo: 'Admin'),
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
                            List<UsersRecord> containerUsersRecordList =
                                snapshot.data;
                            return Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.tertiaryColor,
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    final ordersCreateData =
                                        createOrdersRecordData(
                                      createdAt: getCurrentTimestamp,
                                      orderNo: functions.generateOrderNumber(
                                          getCurrentTimestamp),
                                      scheduledAt: calendarSelectedDay.end,
                                      quantity: countControllerValue,
                                      amount: functions.countAmount(
                                          100000.0, countControllerValue),
                                      status: 'New',
                                      petCategory: dropDownPetsValue,
                                      name:
                                          'Groom ${countControllerValue.toString()} ${dropDownPetsValue}',
                                      service: dropDownServiceValue,
                                      customerUid: currentUserReference,
                                      customerAddress:
                                          groomingFormUsersRecord.orderAddress,
                                      customerLatlng:
                                          groomingFormUsersRecord.orderLatlng,
                                      customerName: currentUserDisplayName,
                                      paymentStatus: 'Unpaid',
                                    );
                                    final ordersRecordReference =
                                        OrdersRecord.collection.doc();
                                    await ordersRecordReference
                                        .set(ordersCreateData);
                                    order = OrdersRecord.getDocumentFromData(
                                        ordersCreateData,
                                        ordersRecordReference);
                                    triggerPushNotification(
                                      notificationTitle: 'New Grooming Order',
                                      notificationText:
                                          'Hey! You\'ve got a new order, check it out!',
                                      userRefs: containerUsersRecordList
                                          .map((e) => e.reference)
                                          .toList(),
                                      initialPageName: 'Home',
                                      parameterData: {},
                                    );
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            GroomingDetailWidget(
                                          order: order.reference,
                                        ),
                                      ),
                                    );

                                    setState(() {});
                                  },
                                  text:
                                      'Order - ${functions.countFee(countControllerValue)}',
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    height: 56,
                                    color: FlutterFlowTheme.secondaryColor,
                                    textStyle: FlutterFlowTheme.title3.override(
                                      fontFamily: 'RockoUltra',
                                      color: FlutterFlowTheme.tertiaryColor,
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
                            );
                          },
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
