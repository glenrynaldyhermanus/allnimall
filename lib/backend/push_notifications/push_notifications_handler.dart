import 'dart:async';
import 'dart:convert';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../../splash/splash_widget.dart';
import '../../profile_and_pets/profile_and_pets_widget.dart';
import '../../market_place/market_place_widget.dart';
import '../../new_pet/new_pet_widget.dart';
import '../../order_list/order_list_widget.dart';
import '../../grooming_form/grooming_form_widget.dart';
import '../../select_geo_location/select_geo_location_widget.dart';
import '../../grooming_detail/grooming_detail_widget.dart';
import '../../address_form/address_form_widget.dart';
import '../../phone_sign_in/phone_sign_in_widget.dart';
import '../../phone_verification/phone_verification_widget.dart';
import '../../sign_up/sign_up_widget.dart';
import '../../pet_profile/pet_profile_widget.dart';
import '../../article/article_widget.dart';
import '../../help/help_widget.dart';
import '../../request_feature/request_feature_widget.dart';
import '../../chat/chat_widget.dart';
import '../../pet_post/pet_post_widget.dart';
import '../../update_pet/update_pet_widget.dart';
import '../../pet_schedule/pet_schedule_widget.dart';
import '../../add_schedule/add_schedule_widget.dart';
import '../../timeline/timeline_widget.dart';
import '../../pet_list/pet_list_widget.dart';
import '../../edit_profile/edit_profile_widget.dart';
import '../../home_backup/home_backup_widget.dart';

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler(
      {Key key, this.handlePushNotification, this.child})
      : super(key: key);

  final Function(BuildContext) handlePushNotification;
  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
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
          color: FlutterFlowTheme.tertiaryColor,
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
  'Splash': (data) async => SplashWidget(),
  'ProfileAndPets': (data) async => ProfileAndPetsWidget(),
  'MarketPlace': (data) async => MarketPlaceWidget(),
  'NewPet': (data) async => NewPetWidget(
        pet: getParameter(data, 'pet'),
      ),
  'OrderList': (data) async => OrderListWidget(),
  'GroomingForm': (data) async => GroomingFormWidget(),
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
  'HomeBackup': (data) async => HomeBackupWidget(),
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
