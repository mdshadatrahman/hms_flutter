import 'package:firebase_auth/firebase_auth.dart';

class AuthService{
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //sing in anon
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      print('logged in (userCredential)');
      return user;
      
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}