import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pushnotifier_tutorial/api/firebase_api.dart';
import 'package:pushnotifier_tutorial/firebase_options.dart';
import 'package:pushnotifier_tutorial/pages/notification_page.dart';
import 'pages/home_page.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // Initializes Firebase Connection
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // Initializes Notifications
  await FirebaseApi().initNotifications();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      navigatorKey: navigatorKey,
      routes: {
        '/notification_screen' : (context) => const NotificationPage()
      },
    );
  }
}