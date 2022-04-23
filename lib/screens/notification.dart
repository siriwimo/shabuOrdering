
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:provider_shopper/models/notification.dart';

class MyNotification extends StatelessWidget {
  const MyNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification', style: Theme.of(context).textTheme.headline1),
        backgroundColor: Colors.white,
      ), //App Bar

      body: Container(
        color: Colors.white,

      ),
      
    );
  }
}
