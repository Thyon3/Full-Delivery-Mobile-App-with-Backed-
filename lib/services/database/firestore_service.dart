import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  // get the collection
  final CollectionReference orders = FirebaseFirestore.instance.collection(
    'orders',
  );

  final CollectionReference users = FirebaseFirestore.instance.collection(
    'users',
  );

  // add the orders to the collection

  Future<void> saveOrdersToFireStore(
    String reciept,
    String currentAddress,
  ) async {
    await orders.add({
      'date': DateTime.now(),
      'order': reciept,
      'delivery Address': currentAddress,
      'owner of the company': 'Thyon',
    });
  }

  Future<void> saveUsersToFirestore(
    String name,
    String email,
    String phoneNumber,
  ) async {
    await await users.add({
      'Name': name,
      'Email': email,
      'Phone Number': phoneNumber,
    });
  }
}
