import 'dart:async';
import 'dart:convert';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import '../../index.dart';
import '../../main.dart';

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key key, this.child}) : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    setState(() => _loading = true);
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final pageBuilder = pageBuilderMap[initialPageName];
      if (pageBuilder != null) {
        final page = await pageBuilder(initialParameterData);
        await Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      setState(() => _loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    handleOpenedPushNotification();
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: FlutterFlowTheme.of(context).tertiaryColor,
          child: Center(
            child: Builder(
              builder: (context) => Image.asset(
                'assets/images/Artboard1_4.png',
                width: MediaQuery.of(context).size.width * 0.8,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        )
      : widget.child;
}

final pageBuilderMap = <String, Future<Widget> Function(Map<String, dynamic>)>{
  'Home': (data) async => HomeWidget(),
  'Splash': (data) async => SplashWidget(),
  'ProfileAndPets': (data) async => ProfileAndPetsWidget(),
  'MarketPlace': (data) async => MarketPlaceWidget(),
  'NewPet': (data) async => NewPetWidget(
        pet: getParameter(data, 'pet'),
      ),
  'OrderList': (data) async => OrderListWidget(),
  'SelectGeoLocation': (data) async => SelectGeoLocationWidget(),
  'GroomingDetail': (data) async => GroomingDetailWidget(
        order: getParameter(data, 'order'),
      ),
  'AddressForm': (data) async => AddressFormWidget(),
  'PhoneSignIn': (data) async => PhoneSignInWidget(),
  'PhoneVerification': (data) async => PhoneVerificationWidget(),
  'SignUp': (data) async => SignUpWidget(),
  'PetProfile': (data) async => PetProfileWidget(
        petRef: getParameter(data, 'petRef'),
      ),
  'Article': (data) async => ArticleWidget(
        article: getParameter(data, 'article'),
      ),
  'Help': (data) async => HelpWidget(),
  'RequestFeature': (data) async => RequestFeatureWidget(),
  'Chat': (data) async => ChatWidget(),
  'PetPost': (data) async => PetPostWidget(
        petRef: getParameter(data, 'petRef'),
      ),
  'UpdatePet': (data) async => UpdatePetWidget(
        petRef: getParameter(data, 'petRef'),
      ),
  'PetSchedule': (data) async => PetScheduleWidget(
        petRef: getParameter(data, 'petRef'),
      ),
  'AddSchedule': (data) async => AddScheduleWidget(
        petRef: getParameter(data, 'petRef'),
      ),
  'Timeline': (data) async => TimelineWidget(),
  'PetList': (data) async => PetListWidget(),
  'EditProfile': (data) async => EditProfileWidget(),
  'Settings': (data) async => SettingsWidget(),
  'PaymentMethod': (data) async => PaymentMethodWidget(
        order:
            await getDocumentParameter(data, 'order', OrdersRecord.serializer),
      ),
  'OrderGrooming': (data) async => OrderGroomingWidget(),
  'OrderGroomingService': (data) async => OrderGroomingServiceWidget(),
  'OrderGroomingSchedule': (data) async => OrderGroomingScheduleWidget(),
  'OrderGroomingLocation': (data) async => OrderGroomingLocationWidget(),
  'OrderServiceList': (data) async => OrderServiceListWidget(
        petCategory: getParameter(data, 'petCategory'),
      ),
  'OrderDetail': (data) async => OrderDetailWidget(
        order: getParameter(data, 'order'),
      ),
};

bool hasMatchingParameters(Map<String, dynamic> data, Set<String> params) =>
    params.any((param) => getParameter(data, param) != null);

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
