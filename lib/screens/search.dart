
// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:provider_shopper/models/notification.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  SearchPageState createState() => SearchPageState();
}

class SearchPageState extends State<SearchPage> {
  final _fromKey = GlobalKey<FormState>();

  TextEditingController con = TextEditingController();
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme.headline6;
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Page', style: Theme.of(context).textTheme.headline1),
        backgroundColor: Colors.white,
      ), //App Bar

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[]
        )
      )
      
    );
  }  
}



