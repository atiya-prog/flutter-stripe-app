import 'package:flutter/material.dart';

import 'package:flutter_credit_card/flutter_credit_card.dart';

import 'package:stripe_app/data/data.dart';
import 'package:stripe_app/helpers/helpers.dart';
import 'package:stripe_app/screens/screens.dart';
import 'package:stripe_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({
    Key? key
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pay'),
        actions: [
          IconButton(
            onPressed: () async {
              // showLoading(context);
              // await Future.delayed(const Duration(seconds: 1));
              // Navigator.pop(context);
              showAlert(context, 'Hola', 'Mundo');
            }, 
            icon: const Icon(
              Icons.add
            )
          )
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            width: size.width,
            height: size.height,
            top: 200,
            child: PageView.builder(
              controller: PageController(
                viewportFraction: 0.9
              ),
              physics: const BouncingScrollPhysics(),
              itemCount: creditCardsData.length,
              itemBuilder: (context, index) {
          
                final creditCardModel = creditCardsData[index];
          
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context, fadeInNavigator(context, const CreditCardScreen()));
                  },
                  child: Hero(
                    tag: creditCardModel.cardNumber,
                    child: CreditCardWidget(
                      cardNumber: creditCardModel.cardNumberHidden, 
                      expiryDate: creditCardModel.expiracyDate, 
                      cardHolderName: creditCardModel.cardHolderName, 
                      cvvCode: creditCardModel.cvv, 
                      showBackView: false,                 
                      onCreditCardWidgetChange: (creditCardBrand) {
                        
                      }
                    ),
                  ),
                );
              },
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