import '../flutter_flow/flutter_flow_static_map.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/lat_lng.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mapbox_search/mapbox_search.dart';

class TempWidget extends StatefulWidget {
  const TempWidget({Key key}) : super(key: key);

  @override
  _TempWidgetState createState() => _TempWidgetState();
}

class _TempWidgetState extends State<TempWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [],
            ),
            FlutterFlowStaticMap(
              location: LatLng(9.341465, -79.891704),
              apiKey:
                  'pk.eyJ1IjoiZGhydXZqYSIsImEiOiJja3lmbDJkeWMxanJ1Mm9uMDQ5bTZ3dWk4In0.UBkaminQ6yEHddvEb1jwOQ',
              style: MapBoxStyle.Light,
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
              borderRadius: BorderRadius.circular(0),
              zoom: 12,
              tilt: 0,
              rotation: 0,
            ),
          ],
        ),
      ),
    );
  }
}
