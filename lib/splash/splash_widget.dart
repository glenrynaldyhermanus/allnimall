import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashWidget extends StatefulWidget {
  const SplashWidget({Key key}) : super(key: key);

  @override
  _SplashWidgetState createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'rowOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
      initialState: AnimationState(
        opacity: 0,
      ),
      finalState: AnimationState(
        opacity: 1,
      ),
    ),
  };
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Align(
        alignment: AlignmentDirectional(0, 0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Align(
                alignment: AlignmentDirectional(0, 0),
                child: InkWell(
                  onTap: () async {
                    await Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NavBarPage(initialPage: 'Home'),
                      ),
                      (r) => false,
                    );
                  },
                  child: Image.asset(
                    'assets/images/Artboard1_4.png',
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 100,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
          ],
        ).animated([animationsMap['rowOnPageLoadAnimation']]),
      ),
    );
  }
}
