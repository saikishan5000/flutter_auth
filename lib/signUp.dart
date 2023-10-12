import 'package:flutter/material.dart';
import 'package:authentication_flutter/main.dart';
import 'package:authentication_flutter/signIn.dart';
void main() {
  runApp(signUp());
}

class signUp extends StatelessWidget {
  var emailText = TextEditingController();
  var passText = TextEditingController();
  var nameText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 144,
                decoration: const ShapeDecoration(
                  color: Color(0xFFFDA769),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 1,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 80,
            left: 0,
            right: 0,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Positioned(
                child: Column(
                  children: [
                    Container(
                      width: 126,
                      height: 126,
                      child: Image.asset("assets/renttire Logo.png",
                          width: 40, height: 40),
                      decoration: const ShapeDecoration(
                        color: Color(0xFF473C33),
                        shape: OvalBorder(),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 2,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 200,
            left: 0,
            right: 0,
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 300,
                child: Column(
                  children: [
                    Image.asset("assets/renttire text.png",
                        width: 250, height: 80),
                    SizedBox(height: 10),
                    const Text(
                      'SIGN UP',
                      style: TextStyle(
                        color: Color(0xFF00A87E),
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w800,
                        height: 0,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 50,
                      child: TextField(
                        controller: emailText,
                        decoration: InputDecoration(
                          prefixIcon:
                              Icon(Icons.email, color: Color(0xFFFDA769)),
                          hintText: 'Enter Email',
                          hintStyle: TextStyle(
                            color: Colors.black.withOpacity(0.3),
                          ),
                          contentPadding:
                              const EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 10.0),
                          fillColor: const Color(0x59D9D9D9),
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: const BorderSide(
                              color: Color(0xFFFDA769),
                              width: 1.5,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: const BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 50,
                      child: TextField(
                        controller: nameText,
                        decoration: InputDecoration(
                          prefixIcon:
                          Icon(Icons.person, color: Color(0xFFFDA769)),
                          hintText: 'Enter Name',
                          hintStyle: TextStyle(
                            color: Colors.black.withOpacity(0.3),
                          ),
                          contentPadding:
                          const EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 10.0),
                          fillColor: const Color(0x59D9D9D9),
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: const BorderSide(
                              color: Color(0xFFFDA769),
                              width: 1.5,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: const BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 50,
                      child: TextField(
                        controller: passText,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.key, color: Color(0xFFFDA769)),
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            color: Colors.black.withOpacity(0.3),
                          ),
                          contentPadding:
                              const EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 10.0),
                          fillColor: const Color(0x59D9D9D9),
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: const BorderSide(
                              color: Color(0xFFFDA769),
                              width: 1.5,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: const BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        obscureText: true,
                      ),
                    ),
                    const SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        String uEmailText = emailText.text;
                        String uPassText = passText.text;
                        String uNameText = nameText.text;
                        print("Email:$uEmailText Name:$uNameText  Pass: $uPassText");
                      },
                      child: Container(
                        height: 50,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF00A87E),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'SIGN UP',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w800,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 100,
                          height: 2,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            'Or Continue With',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.4),
                              fontSize: 10,
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 2,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Image.asset("assets/google_logo.png",
                                width: 50, height: 50),
                            Image.asset("assets/facebook_logo.png",
                                width: 50, height: 50),
                            Image.asset("assets/G_logo.png",
                                width: 40, height: 40),
                          ],
                        )),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => signIn()),
                        );
                      },
                      child: const Align(
                        alignment: Alignment.centerRight,
                        child: SizedBox(
                          height: 15,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Already have an account? ',
                                  style: TextStyle(
                                    color: Color(0xFFA4A4A4),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'SIGN IN',
                                  style: TextStyle(
                                    color: Color(0xFF00A87E),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),

                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
