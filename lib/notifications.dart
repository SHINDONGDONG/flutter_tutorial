import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';


class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  AndroidNotificationDetails androidNotificationDetails;

  IOSNotificationDetails iosNotificationDetails;

  NotificationDetails notificationDetails;

  AndroidInitializationSettings androidInitializationSettings;

  IOSInitializationSettings iosInitializationSettings;

  InitializationSettings initializationSettings;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App notification'),
      ),
      body: Center(),
    );
  }
}
@override
void initState(){

}
