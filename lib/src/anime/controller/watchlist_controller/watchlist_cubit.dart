import 'package:anime_portal/src/anime/model/top.dart';
import 'package:anime_portal/src/app/model/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'watchlist_state.dart';
part 'watchlist_cubit.freezed.dart';
part 'watchlist_cubit.g.dart';

class WatchlistCubit extends HydratedCubit<WatchlistState> {
  WatchlistCubit() : super(WatchlistState.initial());

  Future<void> addToWatchList(Top top) async {
    emit(state.copyWith(loading: true));
    final watchlist = state.watchlist;
    watchlist.add(top);
    emit(state.copyWith(watchlist: watchlist, loading: false));
  }

  Future<void> removeFromList(int id) async {
    emit(state.copyWith(loading: true));
    final watchlist = state.watchlist;
    watchlist.removeWhere((top) => top.id == id);
    emit(state.copyWith(watchlist: watchlist, loading: false));
  }

  @override
  WatchlistState? fromJson(Map<String, dynamic> json) {
    return WatchlistState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(WatchlistState state) {
    return state.toJson();
  }
}
