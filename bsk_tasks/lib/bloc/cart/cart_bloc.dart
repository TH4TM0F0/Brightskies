import 'package:bloc/bloc.dart';

import 'package:bsk_tasks/bloc/cart/cart_event.dart';
import 'package:bsk_tasks/bloc/cart/cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartState()) {
    on<AddToCart>((event, emit) {
      final cartItems = Map<String, int>.from(state.cartItems);
      cartItems[event.product.id] = (cartItems[event.product.id] ?? 0) + 1;
      emit(state.copyWith(cartItems: cartItems));
    });

    on<IncrementQuantity>((event, emit) {
      final cartItems = Map<String, int>.from(state.cartItems);
      cartItems[event.productId] = (cartItems[event.productId] ?? 0) + 1;
      emit(state.copyWith(cartItems: cartItems));
    });

    on<DecrementQuantity>((event, emit) {
      final cartItems = Map<String, int>.from(state.cartItems);
      final currentQuantity = cartItems[event.productId];

      if (currentQuantity == null) {
        return;
      }

      if (currentQuantity == 1) {
        cartItems.remove(event.productId);
      } else {
        cartItems[event.productId] = currentQuantity - 1;
      }

      emit(state.copyWith(cartItems: cartItems));
    });

    on<DeleteItem>((event, emit) {
      final cartItems = Map<String, int>.from(state.cartItems);

      if (cartItems[event.productId] == null) {
        return;
      }

      cartItems.remove(event.productId);
      emit(state.copyWith(cartItems: cartItems));
    });

    on<ClearCart>((event, emit) {
      if (state.cartItems.isEmpty) {
        return;
      }

      emit(state.copyWith(cartItems: <String, int>{}));
    });
  }
}
