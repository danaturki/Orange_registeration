import 'package:flutter/material.dart';
import 'register.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/background.jpeg'),
                  fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  "OMS",
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
                Text(
                  "LOGIN",
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
                  height: 25,
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
                      hintText: 'Password',
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
                            "LOG IN",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.lock,
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
                        "Forgot password?",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
