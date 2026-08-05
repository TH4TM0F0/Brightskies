import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bsk_tasks/stateful_widgets_trial/bloc/cart_event.dart';
import 'package:bsk_tasks/stateful_widgets_trial/bloc/cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartState(0)) {
    on<IncrementCart>((event, emit) {
      emit(CartState(state.count + 1));
    });

    on<DecrementCart>((event, emit) {
      emit(CartState(state.count - 1));
    });
  }
}
