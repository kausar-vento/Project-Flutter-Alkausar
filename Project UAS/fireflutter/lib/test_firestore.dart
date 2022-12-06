import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TestFireStore extends StatefulWidget {
  const TestFireStore({Key? key}) : super(key: key);

  @override
  State<TestFireStore> createState() => _TestFireStoreState();
}

class _TestFireStoreState extends State<TestFireStore> {
  var db = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final user = <String, dynamic>{
            "first": "AdaSIapa",
            "last": "Lovelace",
            "born": 1815
          };
          db.collection("users").add(user).then((DocumentReference doc) =>
              print('DocumentSnapshot added with ID: ${doc.id}'));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
