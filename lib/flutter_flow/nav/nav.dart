import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import '../flutter_flow_theme.dart';
import '../../backend/backend.dart';
import '../../auth/firebase_user_provider.dart';
import '../../backend/push_notifications/push_notifications_handler.dart'
    show PushNotificationsHandler;

import '../../index.dart';
import '../../main.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AllnimallFirebaseUser? initialUser;
  AllnimallFirebaseUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(AllnimallFirebaseUser newUser) {
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    if (notifyOnAuthChange) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, _) =>
          appStateNotifier.loggedIn ? NavBarPage() : PhoneSignInWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? NavBarPage() : PhoneSignInWidget(),
          routes: [
            FFRoute(
              name: 'Home',
              path: 'home',
              requireAuth: true,
              builder: (context, params) => HomeWidget(),
            ),
            FFRoute(
              name: 'Splash',
              path: 'splash',
              requireAuth: true,
              builder: (context, params) => SplashWidget(),
            ),
            FFRoute(
              name: 'ProfileAndPets',
              path: 'profileAndPets',
              requireAuth: true,
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'ProfileAndPets')
                  : ProfileAndPetsWidget(),
            ),
            FFRoute(
              name: 'MarketPlace',
              path: 'marketPlace',
              requireAuth: true,
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'MarketPlace')
                  : MarketPlaceWidget(),
            ),
            FFRoute(
              name: 'NewPet',
              path: 'newPet',
              requireAuth: true,
              builder: (context, params) => NewPetWidget(
                pet:
                    params.getParam('pet', ParamType.DocumentReference, 'pets'),
              ),
            ),
            FFRoute(
              name: 'OrderList',
              path: 'orderList',
              requireAuth: true,
              builder: (context, params) => OrderListWidget(),
            ),
            FFRoute(
              name: 'SelectGeoLocation',
              path: 'selectGeoLocation',
              requireAuth: true,
              builder: (context, params) => SelectGeoLocationWidget(),
            ),
            FFRoute(
              name: 'GroomingDetail',
              path: 'groomingDetail',
              requireAuth: true,
              builder: (context, params) => GroomingDetailWidget(
                order: params.getParam(
                    'order', ParamType.DocumentReference, 'orders'),
              ),
            ),
            FFRoute(
              name: 'AddressForm',
              path: 'addressForm',
              requireAuth: true,
              builder: (context, params) => AddressFormWidget(),
            ),
            FFRoute(
              name: 'PhoneSignIn',
              path: 'phoneSignIn',
              builder: (context, params) => PhoneSignInWidget(),
            ),
            FFRoute(
              name: 'PhoneVerification',
              path: 'phoneVerification',
              builder: (context, params) => PhoneVerificationWidget(
                phone: params.getParam('phone', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'SignUp',
              path: 'signUp',
              requireAuth: true,
              builder: (context, params) => SignUpWidget(),
            ),
            FFRoute(
              name: 'PetProfile',
              path: 'petProfile',
              requireAuth: true,
              builder: (context, params) => PetProfileWidget(
                petRef: params.getParam(
                    'petRef', ParamType.DocumentReference, 'pets'),
              ),
            ),
            FFRoute(
              name: 'Article',
              path: 'article',
              requireAuth: true,
              builder: (context, params) => ArticleWidget(
                article: params.getParam(
                    'article', ParamType.DocumentReference, 'articles'),
              ),
            ),
            FFRoute(
              name: 'Help',
              path: 'help',
              requireAuth: true,
              builder: (context, params) => HelpWidget(),
            ),
            FFRoute(
              name: 'RequestFeature',
              path: 'requestFeature',
              requireAuth: true,
              builder: (context, params) => RequestFeatureWidget(),
            ),
            FFRoute(
              name: 'Chat',
              path: 'chat',
              requireAuth: true,
              builder: (context, params) => ChatWidget(),
            ),
            FFRoute(
              name: 'PetPost',
              path: 'petPost',
              requireAuth: true,
              builder: (context, params) => PetPostWidget(
                petRef: params.getParam(
                    'petRef', ParamType.DocumentReference, 'pets'),
              ),
            ),
            FFRoute(
              name: 'UpdatePet',
              path: 'updatePet',
              requireAuth: true,
              builder: (context, params) => UpdatePetWidget(
                petRef: params.getParam(
                    'petRef', ParamType.DocumentReference, 'pets'),
              ),
            ),
            FFRoute(
              name: 'PetSchedule',
              path: 'petSchedule',
              requireAuth: true,
              builder: (context, params) => PetScheduleWidget(
                petRef: params.getParam(
                    'petRef', ParamType.DocumentReference, 'pets'),
              ),
            ),
            FFRoute(
              name: 'AddSchedule',
              path: 'addSchedule',
              requireAuth: true,
              builder: (context, params) => AddScheduleWidget(
                petRef: params.getParam(
                    'petRef', ParamType.DocumentReference, 'pets'),
              ),
            ),
            FFRoute(
              name: 'Social',
              path: 'social',
              requireAuth: true,
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'Social')
                  : SocialWidget(),
            ),
            FFRoute(
              name: 'PetList',
              path: 'petList',
              requireAuth: true,
              builder: (context, params) => PetListWidget(),
            ),
            FFRoute(
              name: 'EditProfile',
              path: 'editProfile',
              requireAuth: true,
              builder: (context, params) => EditProfileWidget(),
            ),
            FFRoute(
              name: 'HomeBackup',
              path: 'homeBackup',
              requireAuth: true,
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'HomeBackup')
                  : HomeBackupWidget(),
            ),
            FFRoute(
              name: 'Settings',
              path: 'settings',
              requireAuth: true,
              builder: (context, params) => SettingsWidget(),
            ),
            FFRoute(
              name: 'PaymentMethod',
              path: 'paymentMethod',
              requireAuth: true,
              asyncParams: {
                'order': getDoc('orders', OrdersRecord.serializer),
              },
              builder: (context, params) => PaymentMethodWidget(
                order: params.getParam('order', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'OrderGrooming',
              path: 'orderGrooming',
              requireAuth: true,
              builder: (context, params) => OrderGroomingWidget(),
            ),
            FFRoute(
              name: 'OrderGroomingService',
              path: 'orderGroomingService',
              requireAuth: true,
              builder: (context, params) => OrderGroomingServiceWidget(),
            ),
            FFRoute(
              name: 'OrderGroomingSchedule',
              path: 'orderGroomingSchedule',
              requireAuth: true,
              builder: (context, params) => OrderGroomingScheduleWidget(),
            ),
            FFRoute(
              name: 'OrderGroomingLocation',
              path: 'orderGroomingLocation',
              requireAuth: true,
              builder: (context, params) => OrderGroomingLocationWidget(),
            ),
            FFRoute(
              name: 'OrderServiceList',
              path: 'orderServiceList',
              requireAuth: true,
              builder: (context, params) => OrderServiceListWidget(
                petCategory: params.getParam('petCategory', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'OrderDetail',
              path: 'orderDetail',
              requireAuth: true,
              builder: (context, params) => OrderDetailWidget(
                order: params.getParam(
                    'order', ParamType.DocumentReference, 'orders'),
              ),
            ),
            FFRoute(
              name: 'FAQList',
              path: 'fAQList',
              requireAuth: true,
              builder: (context, params) => FAQListWidget(),
            ),
            FFRoute(
              name: 'FAQArticle',
              path: 'fAQArticle',
              requireAuth: true,
              asyncParams: {
                'faq': getDoc('faqs', FaqsRecord.serializer),
              },
              builder: (context, params) => FAQArticleWidget(
                faq: params.getParam('faq', ParamType.Document),
              ),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ).toRoute(appStateNotifier),
      ],
      urlPathStrategy: UrlPathStrategy.path,
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              params: params,
              queryParams: queryParams,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              params: params,
              queryParams: queryParams,
              extra: extra,
            );
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState =>
      (routerDelegate.refreshListenable as AppStateNotifier);
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void setRedirectLocationIfUnset(String location) =>
      (routerDelegate.refreshListenable as AppStateNotifier)
          .updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(params)
    ..addAll(queryParams)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam(
    String paramName,
    ParamType type, [
    String? collectionName,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam(param, type, collectionName);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/phoneSignIn';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: FlutterFlowTheme.of(context).tertiaryColor,
                  child: Center(
                    child: Image.asset(
                      'assets/images/Artboard1_4.png',
                      width: MediaQuery.of(context).size.width * 0.8,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                )
              : PushNotificationsHandler(child: page);

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}
