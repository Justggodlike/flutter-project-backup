import 'package:cloud_firestore/cloud_firestore.dart';

class DataAccessService {
  Future<void> uploadUserInfo(userInfo) async {
    await FirebaseFirestore.instance
        .collection("users")
        .add(userInfo)
        .catchError(
      (error) {
        return error.toString();
      },
    );
  }
}
