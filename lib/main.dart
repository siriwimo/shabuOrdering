
import 'package:app_ordering/models/cart_model.dart';
import 'package:app_ordering/models/catalog_model.dart';
import 'package:app_ordering/screens/cart.dart';
import 'package:app_ordering/screens/catalog.dart';
import 'package:app_ordering/screens/home.dart';
import 'package:app_ordering/screens/notification.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app_ordering/common/theme.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Using MultiProvider is convenient when providing multiple objects.
    return MultiProvider(
      providers: [
        // In this sample app, CatalogModel never changes, so a simple Provider
        // is sufficient.
        Provider(create: (context) => CatalogModel()),
        // CartModel is implemented as a ChangeNotifier, which calls for the use
        // of ChangeNotifierProvider. Moreover, CartModel depends
        // on CatalogModel, so a ProxyProvider is needed.
        ChangeNotifierProxyProvider<CatalogModel, CartModel>(
          create: (context) => CartModel(),
          update: (context, catalog, cart) {
            if (cart == null) throw ArgumentError.notNull('cart');
            cart.catalog = catalog;
            return cart;
          },
        ),
      ],
      child: MaterialApp(
        title: 'Provider Demo',
        theme: appTheme,
        initialRoute: '/',
        routes: {
          '/': (context) => const MyLogin(),
          '/catalog': (context) => const MyCatalog(),
          '/cart': (context) => const MyCart(),
          '/notification': (context) => const MyNotification()
        },
      ),
    );
  }
}