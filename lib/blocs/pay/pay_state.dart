part of 'pay_bloc.dart';

@immutable
class PayState {

  const PayState({
    this.payAmount = 350.55, 
    this.currency  = 'USD', 
    this.creditCardIsActive = false, 
    this.creditCardModel
  });

  final double payAmount;
  final String currency; // CAD, USD, EUR, etc
  final bool creditCardIsActive;
  final CreditCardModel? creditCardModel;

  PayState copyWith({
    double? payAmount,
    String? currency,
    bool? creditCardIsActive,
    CreditCardModel? creditCardModel
  }) => PayState(
    payAmount: payAmount ?? this.payAmount, 
    currency : currency  ?? this.currency, 
    creditCardIsActive: creditCardIsActive ?? this.creditCardIsActive, 
    creditCardModel   : creditCardModel    ?? this.creditCardModel, 
  );

}
