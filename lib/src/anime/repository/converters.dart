import 'package:anime_portal/src/anime/model/aired.dart';
import 'package:anime_portal/src/anime/model/anime.dart';
import 'package:anime_portal/src/anime/model/character_role.dart';
import 'package:anime_portal/src/anime/model/character_staff.dart';
import 'package:anime_portal/src/anime/model/episode.dart';
import 'package:anime_portal/src/anime/model/generic_info.dart';
import 'package:anime_portal/src/anime/model/picture.dart';
import 'package:anime_portal/src/anime/model/related.dart';
import 'package:anime_portal/src/anime/model/staff.dart';
import 'package:anime_portal/src/anime/model/top.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:jikan_api/jikan_api.dart' as jikan;

IList<Top> convertTopListToDomain(List<jikan.Top> animeList) {
  return animeList
      .map(
        (topAnime) => Top(
          id: topAnime.malId,
          title: topAnime.title,
          url: topAnime.url,
          imageUrl: topAnime.imageUrl,
          rank: topAnime.rank,
          endDate: topAnime.endDate,
          episodes: topAnime.episodes,
          favorites: topAnime.favorites,
          members: topAnime.members,
          score: topAnime.score,
          startDate: topAnime.startDate,
          type: topAnime.type,
          volumes: topAnime.volumes,
        ),
      )
      .toIList();
}

IList<Top> convertScheduleToAnime(List<jikan.AnimeItem> animeList) {
  return animeList
      .map(
        (anime) => Top(
          id: anime.malId,
          imageUrl: anime.imageUrl,
          title: anime.title,
          url: anime.url,
          score: anime.score,
        ),
      )
      .toIList();
}

List<GenericInfo> convertGenericInfoListToDomain(
    List<jikan.GenericInfo>? genericInfo) {
  if (genericInfo == null) {
    return [];
  } else {
    return genericInfo
        .map((info) => GenericInfo(
              id: info.malId,
              name: info.name,
              url: info.url,
              imageUrl: info.imageUrl,
              type: info.type,
            ))
        .toList();
  }
}

Anime convertAnimeToDomain(jikan.Anime anime) {
  return Anime(
    id: anime.malId,
    title: anime.title,
    imageUrl: anime.imageUrl,
    url: anime.url,
    airing: anime.airing,
    background: anime.background,
    score: anime.score,
    scoredBy: anime.scoredBy,
    aired: convertAiredToDomain(anime.aired),
    source: anime.source,
    status: anime.status,
    duration: anime.duration,
    endingThemes: anime.endingThemes.toList(),
    favorites: anime.favorites,
    synopsis: anime.synopsis,
    producers: convertGenericInfoListToDomain(anime.producers.toList()),
    themes: convertGenericInfoListToDomain(anime.themes.toList()),
    broadcast: anime.broadcast,
    demographics: convertGenericInfoListToDomain(anime.demographics.toList()),
    episodes: anime.episodes,
    explicitGenres:
        convertGenericInfoListToDomain(anime.explicitGenres.toList()),
    genres: convertGenericInfoListToDomain(anime.genres.toList()),
    licensors: convertGenericInfoListToDomain(anime.licensors.toList()),
    members: anime.members,
    openingThemes: anime.openingThemes.toList(),
    popularity: anime.popularity,
    premiered: anime.premiered,
    rank: anime.rank,
    rating: anime.rating,
    related: convertRelatedToDomain(anime.related),
    studios: convertGenericInfoListToDomain(anime.studios.toList()),
    titleInEnglish: anime.titleEnglish,
    titleInJapanese: anime.titleJapanese,
    titleSynonyms: anime.titleSynonyms.toList(),
    trailerUrl: anime.trailerUrl,
    type: anime.type,
  );
}

Related convertRelatedToDomain(jikan.Related related) {
  return Related(
    adaptation: convertGenericInfoListToDomain(related.adaptation?.toList()),
    alternativeSetting:
        convertGenericInfoListToDomain(related.alternativeSetting?.toList()),
    alternativeVersion:
        convertGenericInfoListToDomain(related.alternativeVersion?.toList()),
    characters: convertGenericInfoListToDomain(related.character?.toList()),
    fullStory: convertGenericInfoListToDomain(related.fullStory?.toList()),
    other: convertGenericInfoListToDomain(related.other?.toList()),
    parentStory: convertGenericInfoListToDomain(related.parentStory?.toList()),
    prequel: convertGenericInfoListToDomain(related.prequel?.toList()),
    sequel: convertGenericInfoListToDomain(related.sequel?.toList()),
    sideStory: convertGenericInfoListToDomain(related.sideStory?.toList()),
    spinOff: convertGenericInfoListToDomain(related.spinOff?.toList()),
    summary: convertGenericInfoListToDomain(related.summary?.toList()),
  );
}

Aired convertAiredToDomain(jikan.Aired aired) {
  return Aired(
    from: aired.from,
    to: aired.to,
    string: aired.string,
  );
}

CharacterStaff convertCharacterStaffToDomain(
    jikan.CharacterStaff characterStaff) {
  return CharacterStaff(
    characters: characterStaff.characters
        .map((character) => CharacterRole(
              id: character.malId,
              imageUrl: character.imageUrl,
              name: character.name,
              role: character.role,
              url: character.url,
              voiceActors: character.voiceActors
                  ?.map((actor) => Staff(
                        id: actor.malId,
                        imageUrl: actor.imageUrl,
                        name: actor.name,
                        url: actor.url,
                      ))
                  .toList(),
            ))
        .toList(),
    staff: characterStaff.staff
        .map((staff) => Staff(
              id: staff.malId,
              imageUrl: staff.imageUrl,
              name: staff.name,
              url: staff.url,
              positions: staff.positions.toList(),
            ))
        .toList(),
  );
}

Episode convertEpisodeToDomain(jikan.Episode episode) {
  return Episode(
    id: episode.episodeId,
    filler: episode.filler,
    recap: episode.recap,
    title: episode.title,
    aired: episode.aired,
    forumUrl: episode.forumUrl,
    titleJapanese: episode.titleJapanese,
    videoUrl: episode.videoUrl,
  );
}

Picture convertPictureToDomain(jikan.Picture picture) {
  return Picture(
    large: picture.large,
    small: picture.small,
  );
}

Top convertRecommendationToDomain(jikan.Recommendation recommendation) {
  return Top(
    title: recommendation.title,
    id: recommendation.malId,
    url: recommendation.url,
    imageUrl: recommendation.imageUrl,
  );
}
