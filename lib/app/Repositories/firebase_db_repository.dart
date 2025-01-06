import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';

class FirebaseDbRepository {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<void> getFirestoreData() async {
    final data = await firestore.collection('dota2_hero_detail').get();

    for (var element in data.docs) {
      print(element.data());
    }
  }

  Future<void> addHero() async {
    String jsonString =
        await rootBundle.loadString('assets/json_data/dota2_hero_detail.json');
    Map<String, dynamic> jsonData = jsonDecode(jsonString);
    jsonData.forEach(
      (key, value) async {
        await firestore.collection('dota2_hero_detail').doc(key).set(value);
      },
    );
  }
}
