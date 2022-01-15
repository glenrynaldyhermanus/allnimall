import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class PetWeightFormWidget extends StatefulWidget {
  const PetWeightFormWidget({Key key}) : super(key: key);

  @override
  _PetWeightFormWidgetState createState() => _PetWeightFormWidgetState();
}

class _PetWeightFormWidgetState extends State<PetWeightFormWidget> {
  String weightUnitSelectionValue;
  TextEditingController weightFieldController;

  @override
  void initState() {
    super.initState();
    weightFieldController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: TextFormField(
              controller: weightFieldController,
              obscureText: false,
              decoration: InputDecoration(
                hintText: 'Pet\'s weight',
                hintStyle: FlutterFlowTheme.subtitle1,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.secondaryColor,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.secondaryColor,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                contentPadding: EdgeInsetsDirectional.fromSTEB(16, 24, 16, 24),
              ),
              style: FlutterFlowTheme.subtitle1,
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
            child: FlutterFlowDropDown(
              options: ['gr', 'kg'].toList(),
              onChanged: (val) =>
                  setState(() => weightUnitSelectionValue = val),
              width: 88,
              height: 50,
              textStyle: FlutterFlowTheme.subtitle1,
              fillColor: Colors.white,
              elevation: 2,
              borderColor: Colors.transparent,
              borderWidth: 0,
              borderRadius: 0,
              margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
              hidesUnderline: true,
            ),
          ),
        ],
      ),
    );
  }
}
