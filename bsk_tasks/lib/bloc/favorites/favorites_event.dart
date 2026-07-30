import 'package:equatable/equatable.dart';

abstract class FavoritesEvent extends Equatable {
  const FavoritesEvent();
}

class ToggleFavorite extends FavoritesEvent {
  final String productId;

  const ToggleFavorite(this.productId);

  @override
  List<Object> get props => [productId];
}
