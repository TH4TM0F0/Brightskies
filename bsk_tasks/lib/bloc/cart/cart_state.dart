import 'package:equatable/equatable.dart';

class CartState extends Equatable {
  final Map<String , int> cartItems;

  const CartState({this.cartItems = const {}});

  CartState copyWith({Map<String, int>? cartItems}) {
    return CartState(cartItems: cartItems ?? this.cartItems);
  }

  @override
  List<Object> get props => [cartItems];
}