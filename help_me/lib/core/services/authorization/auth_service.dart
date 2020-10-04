import 'package:firebase_auth/firebase_auth.dart';
import 'package:help_me/core/models/index.dart';

class AuthService {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  UserModel _userFromFirebase(User user) {
    return user != null ? UserModel(userId: user.uid) : null;
  }

  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      User user = (await _firebaseAuth.signInWithEmailAndPassword(
              email: email, password: password))
          .user;

      return _userFromFirebase(user);
    } catch (ex) {
      print(ex);
    }
  }

  Future signUpWithEmailAndPassword(String email, String password) async {
    try {
      User user = (await _firebaseAuth.createUserWithEmailAndPassword(
              email: email, password: password))
          .user;

      return _userFromFirebase(user);
    } catch (ex) {
      print(ex);
    }
  }

  Future resetPassword(String email) async {
    try {
      return await _firebaseAuth.sendPasswordResetEmail(email: email);
    } catch (ex) {
      print(ex);
    }
  }

  Future signOut() async {
    return await _firebaseAuth.signOut();
  }
}
