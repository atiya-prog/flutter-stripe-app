import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CompletePayScreen extends StatelessWidget {
   
  const CompletePayScreen({
    Key? key
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Complete Payment'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              FontAwesomeIcons.star,
              color: Colors.white54,
              size: 100.0,
            ),
            SizedBox(height: 20.0,),
            Text(
              'Payment made correctly!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22.0
              ),
            )
          ],
        )
      ),
    );
  }
}