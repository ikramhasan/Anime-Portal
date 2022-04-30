import 'package:anime_portal/src/anime/model/aired.dart';
import 'package:anime_portal/src/anime/model/anime.dart';
import 'package:anime_portal/src/anime/model/top.dart';
import 'package:anime_portal/src/anime/repository/i_anime_repository.dart';
import 'package:anime_portal/src/app/model/failure.dart';
import 'package:dartz/dartz.dart' hide IList;
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../test_helpers/generic_test_exception.dart';
import 'anime_repository_test.mocks.dart';

@GenerateMocks([IAnimeRepository])
void main() {
  late MockIAnimeRepository sut;

  setUpAll(() {
    sut = MockIAnimeRepository();
  });

  group('AnimeRepository', () {
    test('is a subtype of IAnimeRepository', () {
      expect(sut, isA<IAnimeRepository>());
    });

    group('getTrendingAnime()', () {
      test(
        'returns a list of trending anime when called',
        () async {
          when(sut.getTrendingAnime()).thenAnswer(
            (_) async => Right<Failure, IList<Top>>(IList()),
          );

          final animeOrFailure = await sut.getTrendingAnime();

          expect(animeOrFailure.isRight(), true);
        },
      );
    });
    group('getAnimeById()', () {
      final testAnime = Anime(
        title: 'test',
        id: 0,
        aired: Aired.empty(),
        imageUrl: 'test',
        producers: [],
        themes: [],
        url: 'test',
      );

      test(
        'returns an Anime when called',
        () async {
          when(sut.getAnimeById(any)).thenAnswer(
            (_) async => Right<Failure, Anime>(testAnime),
          );

          final animeOrFailure = await sut.getAnimeById(0);

          verify(sut.getAnimeById(any));
          expect(animeOrFailure.isRight(), true);
        },
      );
    });
  });
}
