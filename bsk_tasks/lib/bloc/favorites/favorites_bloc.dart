import 'package:bloc/bloc.dart';

import 'favorites_event.dart';
import 'favorites_state.dart';

class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  FavoritesBloc() : super(FavoritesState()) {
    on<ToggleFavorite>((event, emit) {
      final currentIds = Set<String>.from(state.favoriteIds);
      if (currentIds.contains(event.productId)) {
        currentIds.remove(event.productId);
      } else {
        currentIds.add(event.productId);
      }
      emit(state.copyWith(favoriteIds: currentIds));
    });
  }
}
