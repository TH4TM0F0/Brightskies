import 'package:bsk_tasks/models/product.dart';
import 'package:equatable/equatable.dart';

abstract class CartEvent extends Equatable {
  const CartEvent();
}

class AddToCart extends CartEvent {
  final Product product;
  const AddToCart(this.product);

  @override
  List<Object> get props => [product];
}

class IncrementQuantity extends CartEvent {
  final String productId;
  const IncrementQuantity(this.productId);

  @override
  List<Object> get props => [productId];
}

class DecrementQuantity extends CartEvent {
  final String productId;
  const DecrementQuantity(this.productId);

  @override
  List<Object> get props => [productId];
}

class DeleteItem extends CartEvent {
  final String productId;
  const DeleteItem(this.productId);

  @override
  List<Object> get props => [productId];
}

class ClearCart extends CartEvent {
  const ClearCart();

  @override
  List<Object> get props => [];
}