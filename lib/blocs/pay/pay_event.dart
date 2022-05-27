part of 'pay_bloc.dart';

@immutable
abstract class PayEvent {}

class ActivateCreditCard extends PayEvent {
  ActivateCreditCard(this.creditCardModel);
  final CreditCardModel creditCardModel;
}

class DesactivateCreditCard extends PayEvent {}
