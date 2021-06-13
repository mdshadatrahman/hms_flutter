import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hms_flutter/src/app.dart';
import 'package:hms_flutter/src/auth.dart';
import 'package:hms_flutter/src/screens/home.dart';
import 'package:hms_flutter/src/screens/login.dart';

class SignInMethods extends StatelessWidget {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: Text('Login Methods'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: Text('Login with Email'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey[700],
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => LoginScreen(),
                      ));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: Text('Login with Google'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey[700],
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: Text('Guest Login'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey[700],
                ),
                onPressed: () async {
                  dynamic result = await _auth.signInAnon();
                  if(result == null){
                    Fluttertoast.showToast(
                        msg: 'error',
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.blue,
                        textColor: Colors.white,
                        fontSize: 16.0,  
                    );                
                  } else {
                    //await _signInAnonymously();
                    print(result);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => HomeScreen()
                      ));            
                  }                
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
