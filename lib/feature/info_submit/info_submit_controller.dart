import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  Future<String?> addUser({
    required String date,
    required String name,
    required String number,
  }) async {
    try {
      CollectionReference users =
          FirebaseFirestore.instance.collection('user_details');

      await users.doc().set(
        {
          'date': date,
          'name': name,
          'number': number,
        },
      );
      return 'success';
    } catch (e) {
      return 'Error when adding user';
    }
  }
}
