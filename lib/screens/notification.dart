
// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:provider_shopper/models/notification.dart';

class MyNotification extends StatelessWidget {
  const MyNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme.headline6;
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification', style: Theme.of(context).textTheme.headline1),
        backgroundColor: Colors.white,
      ), //App Bar

      body: Column(
        children: [
          Padding(
            
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          child: Container(
            height: 48,
            child: Row(
              children: [
                Icon(Icons.sticky_note_2_outlined),
                const SizedBox(width: 24),
                Expanded(
                  child: Text('all menu served', style: textTheme),
                ),
                const SizedBox(width: 24),
              ],
            ),
          ),
    ),
        ],
      )
      
    );
  }  
}

