import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dota2_app/core/flavor/flavor_config.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app/app.dart';
import 'core/di/provider_di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseFirestore.instance.settings = const Settings(
    persistenceEnabled: true,
  );
  const Flavor flavor = Flavor.DEV;

  FlavorConfig(
    flavor: flavor,
    values: FlavorValues(baseUrl: flavor.baseUrl),
    color: Colors.blueAccent,
    location: BannerLocation.topEnd,
  );

  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MultiProvider(
      providers: ProviderDi.provider,
      child: const App(),
    ),
  );
}
