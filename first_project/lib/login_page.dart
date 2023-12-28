import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  MyloginState createState() => MyloginState();
}

class MyloginState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Container(
          width: w,
          height: h * 0.3,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/loginimg.png"), fit: BoxFit.cover),
          ),
        ),
        Container(
          // decoration: BoxDecoration(
          //   border: Border.all(
          //     color: Colors.black, // Set the border color here
          //     width: 2.0, // Set the border width here
          //   ),
          // ),
          width: w,
          margin: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello",
                style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
              ),
              Text(
                "Sign into your account",
                style: TextStyle(fontSize: 20, color: Colors.grey[500]),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                  child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              )),
              SizedBox(
                height: 20,
              ),
              Container(
                  child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              )),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(child: Container()),
                  Text(
                    "Forget your password",
                    style: TextStyle(fontSize: 20, color: Colors.grey[500]),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Container(
            width: w * 0.5,
            height: h * 0.08,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                  image: AssetImage("assets/loginbtn.png"), fit: BoxFit.cover),
            ),
            child: Center(
              child: Text(
                "Sign in",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            )),
        SizedBox(
          height: w * 0.1,
        ),
        RichText(
          text: TextSpan(
              text: "Don\'t have an account?",
              style: TextStyle(color: Colors.grey, fontSize: 20),
              children: [
                TextSpan(
                    text: " Create",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20))
              ]),
        )
      ]),
    );
  }
}
