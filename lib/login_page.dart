import 'package:flutter/material.dart';
import 'registrasi.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({Key? key}) : super(key: key);

  @override
  _Login_PageState createState() => _Login_PageState();
}

bool _obscureText = true;

class _Login_PageState extends State<Login_Page> {
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
                width: w,
                height: h * 0.3,
                child: Image.asset(
                  "img/loginimg.png",
                  fit: BoxFit.cover,
                )),
            Container(
              width: w,
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello",
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Sign into yours account",
                    style: TextStyle(fontSize: 17, color: Colors.grey),
                  ),
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
                                    color: Colors.deepOrangeAccent)),
                          ),
                          hintText: "Password"),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.03,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        "Sign into yours account",
                        style: TextStyle(fontSize: 17, color: Colors.grey),
                      ),
                    ],
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
                          "Sign In",
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
                  SizedBox(
                    height: h * 0.17,
                  ),
                  Center(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Row(
                      children: [
                        Text(
                          "Dont\'n have an account?",
                          style: TextStyle(fontSize: 15),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Register();
                              }));
                            },
                            child: Text("Create",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.pink[600])))
                      ],
                    ),
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
