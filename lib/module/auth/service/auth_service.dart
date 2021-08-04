import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  static FirebaseAuth _auth = FirebaseAuth.instance;
  static FirebaseFirestore firestore = FirebaseFirestore.instance;

  static Future signUp(
    String name,
    String email,
    String password,
    String hashPassword,
  ) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      User user = result.user;
      CollectionReference reference = firestore.collection('/users');
      Map<String, dynamic> postRequest = {
        "email": email,
        "nama": name,
        "password": hashPassword,
        "handphone": "",
        "alamat": "-",
      };
      await reference.doc(user.uid).set(postRequest);
      return user;
    } on FirebaseAuthException catch (e) {
      print(e.code);
      return e.code;
    }
  }

  static Future signIn(
    String email,
    String password,
  ) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User user = result.user;
      print("HASIL : $result");
      return user;
    } on FirebaseAuthException catch (e) {
      print("ERROR : ${e.code}");
      return e.code;
    }
  }
}
