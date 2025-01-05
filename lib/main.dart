import 'package:flutter/material.dart';
import 'package:jokes_app/screens/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:jokes_app/services/notification_service.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  NotificationService notificationService = NotificationService();
  await notificationService.initialize();
  await notificationService.showTestNotification();
  await notificationService.scheduleJokeNotification();

  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jokes App',
      initialRoute: '/',
      routes: {
        '/' : (context) =>  Home(),
      },
    );
  }
}

