import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:rental_car_app/firebase_options.dart';
import 'package:rental_car_app/presentation/pages/MapsDetails.dart';
import 'package:rental_car_app/presentation/pages/car_list_screen.dart';
import 'package:rental_car_app/presentation/pages/onboarding.dart';
import 'presentation/pages/MapsDetails.dart';
import 'presentation/pages/car_details_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MapsdetailsPage(),
    );
  }
}

