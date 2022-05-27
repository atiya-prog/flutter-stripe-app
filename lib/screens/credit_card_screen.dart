import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';

import 'package:stripe_app/blocs/blocs.dart';
import 'package:stripe_app/widgets/widgets.dart';

class CreditCardScreen extends StatelessWidget {
   
  const CreditCardScreen({
    Key? key
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final payBloc = BlocProvider.of<PayBloc>(context);

    final creditCardModel = payBloc.state.creditCardModel!;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pay'),
        leading: IconButton(
          onPressed: () {
            payBloc.add(DesactivateCreditCard());
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios
          ),
        ),
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