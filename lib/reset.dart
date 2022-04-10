import 'package:flutter/material.dart';
import 'package:widgets_test/login.dart';
import 'register.dart';
import 'login.dart';

class ResetPage extends StatelessWidget {
  const ResetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/background.jpeg'), fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "RESET",
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
              Text(
                "NOW",
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
              SizedBox(
                height: 200,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        width: 1,
                        color: Colors.grey,
                        style: BorderStyle.solid)),
                width: 320,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    contentPadding: EdgeInsets.all(15),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(children: [
                SizedBox(width: 225),
                Container(
                  width: 140,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                  child: InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "RESET NOW",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.refresh,
                          size: 18,
                          color: Colors.white,
                        )
                      ],
                    ),
                    //onTap: ,
                  ),
                )
              ]),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    child: Text(
                      "Register",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => RegisterPage(),
                        ),
                      );
                    },
                  ),
                  InkWell(
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => LoginPage(),
                        ),
                      );
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
