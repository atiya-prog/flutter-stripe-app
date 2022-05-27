import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:stripe_app/models/models.dart';
import 'package:stripe_app/widgets/widgets.dart';

class CreditCardScreen extends StatelessWidget {
   
  const CreditCardScreen({
    Key? key
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final creditCardModel = CreditCardModel(
      cardNumberHidden: '4242',
      cardNumber: '4242424242424242',
      brand: 'visa',
      cvv: '213',
      expiracyDate: '01/25',
      cardHolderName: 'Fernando Herrera'
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pay'),
      ),
      body: Stack(
        children: [
          Container(),
          Hero(
            tag: creditCardModel.cardNumber,
            child: CreditCardWidget(
              cardNumber: creditCardModel.cardNumberHidden, 
              expiryDate: creditCardModel.expiracyDate, 
              cardHolderName: creditCardModel.cardHolderName, 
              cvvCode: creditCardModel.cvv, 
              showBackView: false,                 
              onCreditCardWidgetChange: (creditCardBrand) {}
            ),
          ),
          const Positioned(
            bottom: 0.0,
            child: TotalPayButton()
          )
        ],
      )
    );
  }
} 