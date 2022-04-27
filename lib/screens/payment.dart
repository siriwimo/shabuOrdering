
// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_shopper/models/cart.dart';
// import 'package:provider_shopper/models/notification.dart';

class MyPayment extends StatelessWidget {
  const MyPayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme.headline6;
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment', style: Theme.of(context).textTheme.headline1),
        backgroundColor: Colors.white,
      ), //App Bar

      body: Column(
        children: [
          Padding(
            
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          child: Center(
            // height: 48,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 24),

                Expanded(
                  child: Text('Invoice', style: textTheme),
                ),

                const SizedBox(width: 24),

                Consumer<CartModel>(
                builder: (context, cart, child) =>
                    Text('\$${cart.totalPrice}', )),

                const SizedBox(
                height: 50,
                ),
              ],
            ),
          ),
    ),
            const Divider(height: 150, color: Colors.black),
            PaymentOption()
        ],
      )
      
    );
  }  
}


class PaymentOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                child: const Text('cash'),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow,
                ),
              ),
              ElevatedButton(
                child: const Text('mobile banking'),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow,
                ),
              )
          ]
        )
      )
    );
  }
}

