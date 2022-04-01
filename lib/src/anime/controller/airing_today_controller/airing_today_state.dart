part of 'airing_today_cubit.dart';

@freezed
class AiringTodayState with _$AiringTodayState {
  const factory AiringTodayState({
    required bool loading,
    required IList<Top> airingToday,
    required Failure failure,
  }) = _AiringTodayState;

  factory AiringTodayState.initial() => AiringTodayState(
        loading: false,
        failure: Failure.none(),
        airingToday: IList(),
      );
}
