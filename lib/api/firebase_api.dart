import 'dart:developer';
import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseApi {
  // Create instance of Firebase Messaging
  final _firebaseMessaging = FirebaseMessaging.instance;

  // Function to initialize notifications
  Future<void> initNotifications() async {
    // request permission from user (will prompt user)
    await _firebaseMessaging.requestPermission();

    // fetch the FCM token for this device
    final fcmToken = await _firebaseMessaging.getToken();

    // print the token (normally you would send this to your server)
    log("Token $fcmToken");
  }

  // Function to handle received messages

  // Function to initialize foreground and background settings
}