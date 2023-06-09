import 'package:flutter/material.dart';

import '../components/components.dart';
import '../const.dart';
import '../screens/home_screen.dart';
import '../welcome.dart';
import 'auth.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: mainColor,
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
                child: Container(
              child: Container(
                height: height * 0.2,
                width: width * 0.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'REGISTER',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      height: height * 0.06,
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                          child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          hintText: 'Your full name',
                          border: InputBorder.none,
                        ),
                      )),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      height: height * 0.06,
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                          child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.mail),
                          hintText: 'Your email address',
                          border: InputBorder.none,
                        ),
                      )),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      height: height * 0.06,
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                          child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          hintText: 'Your password',
                          suffixIcon: Icon(Icons.visibility_off),
                          border: InputBorder.none,
                        ),
                      )),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                      child: Container(
                        height: height * 0.06,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              mainColor,
                              Colors.orangeAccent,
                            ]),
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Text(
                            'REGISTER',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                  ],
                ),
              ),
            )),
            SocialLoginComponent(),
          ],
        ),
      ),
    );
  }
}
