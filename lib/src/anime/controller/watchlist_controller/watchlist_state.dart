part of 'watchlist_cubit.dart';

@freezed
class WatchlistState with _$WatchlistState {
  const factory WatchlistState({
    required bool loading,
    required Failure failure,
    required List<Top> watchlist,
  }) = _WatchlistState;

  factory WatchlistState.initial() => WatchlistState(
        loading: true,
        failure: Failure.none(),
        watchlist: [],
      );

  factory WatchlistState.fromJson(Map<String, dynamic> json) =>
      _$WatchlistStateFromJson(json);
}
