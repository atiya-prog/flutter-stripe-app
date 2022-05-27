import 'package:flutter/material.dart';

import 'package:bloc/bloc.dart';
import 'package:stripe_app/models/credit_card_model.dart';

part 'pay_event.dart';
part 'pay_state.dart';

class PayBloc extends Bloc<PayEvent, PayState> {

  PayBloc() : super(const PayState()) {
    
    on<ActivateCreditCard>((event, emit) => emit(
      state.copyWith(creditCardIsActive:  true, creditCardModel: event.creditCardModel)
    ));

    on<DesactivateCreditCard>((event, emit) => emit(state.copyWith(creditCardIsActive:  false)));

  }
  
}
