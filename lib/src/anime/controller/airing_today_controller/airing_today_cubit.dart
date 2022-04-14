import 'package:anime_portal/src/anime/model/top.dart';
import 'package:anime_portal/src/anime/repository/i_anime_repository.dart';
import 'package:anime_portal/src/app/model/failure.dart';
import 'package:bloc/bloc.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'airing_today_state.dart';
part 'airing_today_cubit.freezed.dart';

class AiringTodayCubit extends Cubit<AiringTodayState> {
  AiringTodayCubit(this._repository) : super(AiringTodayState.initial());

  final IAnimeRepository _repository;

  Future<void> getAiringToday(int weekday) async {
    if (state.airingToday.isEmpty) {
      emit(state.copyWith(loading: true));

      final failureOrAiringAnime = await _repository.getAiringToday(weekday);

      emit(
        failureOrAiringAnime.fold(
          (failure) => state.copyWith(
            loading: false,
            failure: failure,
            airingToday: IList(),
          ),
          (airingTodayList) => state.copyWith(
            loading: false,
            failure: Failure.none(),
            airingToday: airingTodayList,
          ),
        ),
      );
    }
  }
}
