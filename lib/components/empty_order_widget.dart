import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../order_grooming/order_grooming_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class EmptyOrderWidget extends StatefulWidget {
  const EmptyOrderWidget({Key key}) : super(key: key);

  @override
  _EmptyOrderWidgetState createState() => _EmptyOrderWidgetState();
}

class _EmptyOrderWidgetState extends State<EmptyOrderWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            'Kamu belum memiliki order',
            style: FlutterFlowTheme.of(context).subtitle2,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
            child: FFButtonWidget(
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderGroomingWidget(),
                  ),
                );
              },
              text: 'Panggil groomer',
              options: FFButtonOptions(
                width: 160,
                height: 40,
                color: FlutterFlowTheme.of(context).secondaryColor,
                textStyle: FlutterFlowTheme.of(context).title3.override(
                      fontFamily: 'RockoUltra',
                      color: FlutterFlowTheme.of(context).tertiaryColor,
                      fontSize: 14,
                      useGoogleFonts: false,
                    ),
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
