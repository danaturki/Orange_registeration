import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
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
                  "REGISTER",
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
                Text(
                  "NOW",
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
                SizedBox(
                  height: 70,
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
                      hintText: 'Username',
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
                      hintText: 'Phone',
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
                            "REGISTER",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.content_paste_outlined,
                            size: 18,
                            color: Colors.white,
                          )
                        ],
                      ),
                      //onTap: ,
                    ),
                  )
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
