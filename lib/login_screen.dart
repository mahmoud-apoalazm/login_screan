import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailcontrol = TextEditingController();

  var passcontrol = TextEditingController();

  bool passwordvisible=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "QUIZ APP",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        color: Colors.white70,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
    child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Login",
                  style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 40,color: Colors.blueAccent.withOpacity(0.9)),
                ),
                SizedBox(
                  height: 40,
                ),
                TextFormField(
                  controller: emailcontrol,
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value) {
                    print(value);
                  },
                  onChanged: (v) {
                    print(v);
                  },
                  decoration: InputDecoration(
                    // hintText: "Email address",
                    labelText: "Email address",
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: passcontrol,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: passwordvisible,
                  onFieldSubmitted: (value) {
                    print(value);
                  },
                  onChanged: (v) {
                    print(v);
                  },
                  decoration: InputDecoration(
                    // hintText: "Email address",
                    labelText: "Email address",
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(
                        passwordvisible?Icons.visibility:Icons.visibility_off
                          ),
                    onPressed: (){
                       setState(() {
                        passwordvisible=!passwordvisible;
                    });
                    },
                    ),

                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  color: Colors.blueAccent,
                  child: MaterialButton(
                    onPressed: () {

                      print(emailcontrol.text);
                      print(passcontrol.text);
                    },
                    child: Text(
                      "LOGIN",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("don't have an account"),
                    TextButton(
                      onPressed: () {},
                      child: Text("Register Now"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        ),
      ),
    );
  }
}
