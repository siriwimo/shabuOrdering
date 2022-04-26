import 'package:flutter/material.dart';

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
            
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: SizedBox(
            height: 48,
            child: Row(
              children: [
                const Icon(Icons.sticky_note_2_outlined),
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