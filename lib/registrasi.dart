import 'package:firebase_flutter/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

bool _obscureText = true;
bool _obscureText1 = true;

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "img/signup.png",
                      ),
                      fit: BoxFit.cover)),
              width: w,
              height: h * 0.3,
              child: Column(
                children: [
                  SafeArea(
                    child: Container(
                      margin: EdgeInsets.only(),
                      color: Colors.transparent,
                      height: 40,
                      width: w * 10,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                style:
                                    TextButton.styleFrom(primary: Colors.white),
                                onPressed: () {
                                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(builder: (contex) {
                                    return Login_Page();
                                  }));
                                },
                                child: Icon(
                                  Icons.arrow_back_ios_new,
                                  size: 22,
                                )),
                            TextButton(
                                style:
                                    TextButton.styleFrom(primary: Colors.white),
                                onPressed: () {},
                                child: Icon(
                                  Icons.more_vert,
                                  size: 25,
                                )),
                          ]),
                    ),
                  ),
                  SizedBox(height: h * 0.069),
                  CircleAvatar(
                      backgroundColor: Colors.grey[400],
                      radius: 60,
                      backgroundImage: AssetImage(
                        "img/profile1.png",
                      ))
                ],
              ),
            ),
            SizedBox(height: h * 0.013),
            Container(
              width: w,
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 10,
                              offset: Offset(1, 1),
                              color: Colors.grey.withOpacity(0.3))
                        ]),
                    child: TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.0)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.0)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          prefixIcon: Icon(Icons.person,
                              color: Colors.deepOrangeAccent),
                          hintText: "Username"),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.025,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 10,
                              offset: Offset(1, 1),
                              color: Colors.grey.withOpacity(0.3))
                        ]),
                    child: TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.0)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.0)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.deepOrangeAccent,
                          ),
                          hintText: "Email"),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.025,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 10,
                              offset: Offset(1, 1),
                              color: Colors.grey.withOpacity(0.3))
                        ]),
                    child: TextField(
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.0)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.0)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.deepOrangeAccent,
                          ),
                          suffixIcon: ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                              child: Icon(
                                  _obscureText
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Colors.deepOrangeAccent),
                            ),
                          ),
                          hintText: "Password"),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.025,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 10,
                              offset: Offset(1, 1),
                              color: Colors.grey.withOpacity(0.3))
                        ]),
                    child: TextField(
                      obscureText: _obscureText1,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.0)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.0)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.deepOrangeAccent,
                          ),
                          suffixIcon: ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    _obscureText1 = !_obscureText1;
                                  });
                                },
                                child: Icon(
                                    _obscureText1
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: Colors.deepOrangeAccent)),
                          ),
                          hintText: "Confirm Password"),
                    ),
                  ),
                  SizedBox(height: h * 0.04),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 80, right: 80),
                        width: w * 0.5,
                        height: h * 0.07,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                            image: DecorationImage(
                                image: AssetImage("img/loginbtn.png"),
                                fit: BoxFit.cover)),
                        child: Center(
                            child: Text(
                          "Sign Up",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                      ),
                      Center(
                        child: InkWell(
                          onTap: () {},
                          highlightColor: Colors.orange.withOpacity(0.3),
                          splashColor: Colors.pink.withOpacity(0.3),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          child: Container(
                              margin: EdgeInsets.only(left: 0, top: 4),
                              width: w * 0.51,
                              height: h * 0.07,
                              color: Colors.transparent),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
