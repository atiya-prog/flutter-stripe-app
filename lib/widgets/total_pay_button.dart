import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TotalPayButton extends StatelessWidget {
  const TotalPayButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      height: 100.0,
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Total',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                '250.55 USD',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
          const _PayButton()
        ],
      )
    );
  }
}

class _PayButton extends StatelessWidget {
  const _PayButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return true 
      ? buildCreditCardButton(context) 
      : buildAppleAndGooglePay(context);
  }

  Widget buildCreditCardButton(BuildContext context) {
    return MaterialButton(
      height: 45.0,
      minWidth: 150.0,
      shape: const StadiumBorder(),
      elevation: 0.0,
      color: Colors.black,
      onPressed: () {},
      child: Row(
        children: const [
          Icon(
            FontAwesomeIcons.solidCreditCard,
            color: Colors.white,
          ),
          Text(
            '  Pay',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22.0
            ),
          ),
        ],
      ),
    );   
  }

  Widget buildAppleAndGooglePay(BuildContext context) {
    return MaterialButton(
      height: 45.0,
      minWidth: 150.0,
      shape: const StadiumBorder(),
      elevation: 0.0,
      color: Colors.black,
      onPressed: () {},
      child: Row(
        children: [
          Icon(
            Platform.isAndroid 
              ? FontAwesomeIcons.google 
              : FontAwesomeIcons.apple,
            color: Colors.white,
          ),
          const Text(
            ' Pay',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22.0
            ),
          ),
        ],
      ),
    );   
  }
}