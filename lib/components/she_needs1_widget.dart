import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SheNeeds1Widget extends StatefulWidget {
  const SheNeeds1Widget({Key key}) : super(key: key);

  @override
  _SheNeeds1WidgetState createState() => _SheNeeds1WidgetState();
}

class _SheNeeds1WidgetState extends State<SheNeeds1Widget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 120,
      decoration: BoxDecoration(
        color: Color(0xFF010524),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
            child: FFButtonWidget(
              onPressed: () {
                print('Button pressed ...');
              },
              text: 'Record',
              icon: Icon(
                Icons.record_voice_over,
                size: 15,
              ),
              options: FFButtonOptions(
                width: 300,
                height: 40,
                color: FlutterFlowTheme.primaryColor,
                textStyle: FlutterFlowTheme.subtitle2.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                ),
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
                borderRadius: 12,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
            child: FFButtonWidget(
              onPressed: () {
                print('Button pressed ...');
              },
              text: 'Notify my PROTECTORS',
              icon: Icon(
                Icons.location_on,
                size: 15,
              ),
              options: FFButtonOptions(
                width: 300,
                height: 40,
                color: FlutterFlowTheme.primaryColor,
                textStyle: FlutterFlowTheme.subtitle2.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                ),
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
                borderRadius: 12,
              ),
            ),
          )
        ],
      ),
    );
  }
}
