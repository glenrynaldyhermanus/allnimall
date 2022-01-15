import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'auth/firebase_user_provider.dart';
import 'auth/auth_util.dart';
import 'backend/push_notifications/push_notifications_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import 'package:allnimall/phone_sign_in/phone_sign_in_widget.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'home/home_widget.dart';
import 'market_place/market_place_widget.dart';
import 'timeline/timeline_widget.dart';
import 'profile_and_pets/profile_and_pets_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Stream<AllnimallFirebaseUser> userStream;
  AllnimallFirebaseUser initialUser;
  bool displaySplashImage = true;
  final authUserSub = authenticatedUserStream.listen((_) {});
  final fcmTokenSub = fcmTokenUserStream.listen((_) {});

  @override
  void initState() {
    super.initState();
    userStream = allnimallFirebaseUserStream()
      ..listen((user) => initialUser ?? setState(() => initialUser = user));
    Future.delayed(
        Duration(seconds: 1), () => setState(() => displaySplashImage = false));
  }

  @override
  void dispose() {
    authUserSub.cancel();
    fcmTokenSub.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Allnimall',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('en', '')],
      theme: ThemeData(primarySwatch: Colors.blue),
      home: initialUser == null || displaySplashImage
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
          : currentUser.loggedIn
              ? PushNotificationsHandler(child: NavBarPage())
              : PhoneSignInWidget(),
    );
  }
}

class NavBarPage extends StatefulWidget {
  NavBarPage({Key key, this.initialPage}) : super(key: key);

  final String initialPage;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.
class _NavBarPageState extends State<NavBarPage> {
  String _currentPage = 'Home';

  @override
  void initState() {
    super.initState();
    _currentPage = widget.initialPage ?? _currentPage;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'Home': HomeWidget(),
      'MarketPlace': MarketPlaceWidget(),
      'Timeline': TimelineWidget(),
      'ProfileAndPets': ProfileAndPetsWidget(),
    };
    final currentIndex = tabs.keys.toList().indexOf(_currentPage);
    return Scaffold(
      body: tabs[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (i) => setState(() => _currentPage = tabs.keys.toList()[i]),
        backgroundColor: FlutterFlowTheme.primaryColor,
        selectedItemColor: FlutterFlowTheme.secondaryColor,
        unselectedItemColor: Color(0x8AC8C8C8),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.dashboard_rounded,
              size: 32,
            ),
            label: 'Home',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.store_mall_directory_rounded,
              size: 32,
            ),
            label: 'Marketplace',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.people_alt,
              size: 32,
            ),
            label: 'Timeline',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.pets_outlined,
              size: 32,
            ),
            label: 'Profile n Pets',
            tooltip: '',
          )
        ],
      ),
    );
  }
}
