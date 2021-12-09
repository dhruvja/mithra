import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController emailTextController;
  TextEditingController passwordTextController;
  bool passwordVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailTextController = TextEditingController();
    passwordTextController = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFF0F044C),
          ),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0.06, -0.63),
                child: Image.network(
                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/flutterflow_assets/ff_full_logo_light.png',
                  width: 280,
                  height: 100,
                  fit: BoxFit.contain,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.67),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                      child: Container(
                        width: 285,
                        height: 40,
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: TextFormField(
                                controller: emailTextController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: 'Username',
                                  hintStyle: GoogleFonts.getFont(
                                    'Lato',
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFF3C2452),
                                      width: 2,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFF3C2452),
                                      width: 2,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                ),
                                style: GoogleFonts.getFont(
                                  'Lato',
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.95, 0.5),
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 24,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                      child: Container(
                        width: 285,
                        height: 40,
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: TextFormField(
                                controller: passwordTextController,
                                obscureText: !passwordVisibility,
                                decoration: InputDecoration(
                                  hintText: 'Password',
                                  hintStyle: GoogleFonts.getFont(
                                    'Lato',
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFF3C2452),
                                      width: 2,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFF3C2452),
                                      width: 2,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  suffixIcon: InkWell(
                                    onTap: () => setState(
                                      () => passwordVisibility =
                                          !passwordVisibility,
                                    ),
                                    child: Icon(
                                      passwordVisibility
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined,
                                      size: 22,
                                    ),
                                  ),
                                ),
                                style: GoogleFonts.getFont(
                                  'Lato',
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.95, 0.5),
                              child: Icon(
                                Icons.lock_open,
                                color: Colors.white,
                                size: 24,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 40),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'Sign up',
                            options: FFButtonOptions(
                              width: 125,
                              height: 40,
                              color: Color(0x00FFFFFF),
                              textStyle: GoogleFonts.getFont(
                                'Lato',
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                              borderSide: BorderSide(
                                color: Color(0xFF553BBA),
                                width: 2,
                              ),
                              borderRadius: 0,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(35, 0, 0, 0),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'Sign in',
                              options: FFButtonOptions(
                                width: 125,
                                height: 40,
                                color: Color(0x00FFFFFF),
                                textStyle: GoogleFonts.getFont(
                                  'Lato',
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                                borderSide: BorderSide(
                                  color: Color(0xFF553BBA),
                                  width: 2,
                                ),
                                borderRadius: 0,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Text(
                      'Forgot Password?',
                      style: GoogleFonts.getFont(
                        'Lato',
                        color: Color(0xFF676767),
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
