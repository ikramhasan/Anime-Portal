// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'anime_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AnimeStateTearOff {
  const _$AnimeStateTearOff();

  _AnimeState call(
      {required bool loading,
      required Anime anime,
      required Failure failure,
      required bool characterStaffLoading,
      required CharacterStaff characterStaff,
      required Failure characterStaffFailure,
      required bool episodeLoading,
      required List<Episode> episodes,
      required Failure episodeFailure,
      required bool picturesLoading,
      required List<Picture> pictures,
      required Failure picturesFailure}) {
    return _AnimeState(
      loading: loading,
      anime: anime,
      failure: failure,
      characterStaffLoading: characterStaffLoading,
      characterStaff: characterStaff,
      characterStaffFailure: characterStaffFailure,
      episodeLoading: episodeLoading,
      episodes: episodes,
      episodeFailure: episodeFailure,
      picturesLoading: picturesLoading,
      pictures: pictures,
      picturesFailure: picturesFailure,
    );
  }
}

/// @nodoc
const $AnimeState = _$AnimeStateTearOff();

/// @nodoc
mixin _$AnimeState {
// Anime
  bool get loading => throw _privateConstructorUsedError;
  Anime get anime => throw _privateConstructorUsedError;
  Failure get failure => throw _privateConstructorUsedError; // Character Staff
  bool get characterStaffLoading => throw _privateConstructorUsedError;
  CharacterStaff get characterStaff => throw _privateConstructorUsedError;
  Failure get characterStaffFailure =>
      throw _privateConstructorUsedError; // Episodes
  bool get episodeLoading => throw _privateConstructorUsedError;
  List<Episode> get episodes => throw _privateConstructorUsedError;
  Failure get episodeFailure => throw _privateConstructorUsedError; // Pictures
  bool get picturesLoading => throw _privateConstructorUsedError;
  List<Picture> get pictures => throw _privateConstructorUsedError;
  Failure get picturesFailure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnimeStateCopyWith<AnimeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeStateCopyWith<$Res> {
  factory $AnimeStateCopyWith(
          AnimeState value, $Res Function(AnimeState) then) =
      _$AnimeStateCopyWithImpl<$Res>;
  $Res call(
      {bool loading,
      Anime anime,
      Failure failure,
      bool characterStaffLoading,
      CharacterStaff characterStaff,
      Failure characterStaffFailure,
      bool episodeLoading,
      List<Episode> episodes,
      Failure episodeFailure,
      bool picturesLoading,
      List<Picture> pictures,
      Failure picturesFailure});

  $AnimeCopyWith<$Res> get anime;
  $FailureCopyWith<$Res> get failure;
  $CharacterStaffCopyWith<$Res> get characterStaff;
  $FailureCopyWith<$Res> get characterStaffFailure;
  $FailureCopyWith<$Res> get episodeFailure;
  $FailureCopyWith<$Res> get picturesFailure;
}

/// @nodoc
class _$AnimeStateCopyWithImpl<$Res> implements $AnimeStateCopyWith<$Res> {
  _$AnimeStateCopyWithImpl(this._value, this._then);

  final AnimeState _value;
  // ignore: unused_field
  final $Res Function(AnimeState) _then;

  @override
  $Res call({
    Object? loading = freezed,
    Object? anime = freezed,
    Object? failure = freezed,
    Object? characterStaffLoading = freezed,
    Object? characterStaff = freezed,
    Object? characterStaffFailure = freezed,
    Object? episodeLoading = freezed,
    Object? episodes = freezed,
    Object? episodeFailure = freezed,
    Object? picturesLoading = freezed,
    Object? pictures = freezed,
    Object? picturesFailure = freezed,
  }) {
    return _then(_value.copyWith(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      anime: anime == freezed
          ? _value.anime
          : anime // ignore: cast_nullable_to_non_nullable
              as Anime,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      characterStaffLoading: characterStaffLoading == freezed
          ? _value.characterStaffLoading
          : characterStaffLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      characterStaff: characterStaff == freezed
          ? _value.characterStaff
          : characterStaff // ignore: cast_nullable_to_non_nullable
              as CharacterStaff,
      characterStaffFailure: characterStaffFailure == freezed
          ? _value.characterStaffFailure
          : characterStaffFailure // ignore: cast_nullable_to_non_nullable
              as Failure,
      episodeLoading: episodeLoading == freezed
          ? _value.episodeLoading
          : episodeLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      episodes: episodes == freezed
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<Episode>,
      episodeFailure: episodeFailure == freezed
          ? _value.episodeFailure
          : episodeFailure // ignore: cast_nullable_to_non_nullable
              as Failure,
      picturesLoading: picturesLoading == freezed
          ? _value.picturesLoading
          : picturesLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      pictures: pictures == freezed
          ? _value.pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as List<Picture>,
      picturesFailure: picturesFailure == freezed
          ? _value.picturesFailure
          : picturesFailure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  $AnimeCopyWith<$Res> get anime {
    return $AnimeCopyWith<$Res>(_value.anime, (value) {
      return _then(_value.copyWith(anime: value));
    });
  }

  @override
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }

  @override
  $CharacterStaffCopyWith<$Res> get characterStaff {
    return $CharacterStaffCopyWith<$Res>(_value.characterStaff, (value) {
      return _then(_value.copyWith(characterStaff: value));
    });
  }

  @override
  $FailureCopyWith<$Res> get characterStaffFailure {
    return $FailureCopyWith<$Res>(_value.characterStaffFailure, (value) {
      return _then(_value.copyWith(characterStaffFailure: value));
    });
  }

  @override
  $FailureCopyWith<$Res> get episodeFailure {
    return $FailureCopyWith<$Res>(_value.episodeFailure, (value) {
      return _then(_value.copyWith(episodeFailure: value));
    });
  }

  @override
  $FailureCopyWith<$Res> get picturesFailure {
    return $FailureCopyWith<$Res>(_value.picturesFailure, (value) {
      return _then(_value.copyWith(picturesFailure: value));
    });
  }
}

/// @nodoc
abstract class _$AnimeStateCopyWith<$Res> implements $AnimeStateCopyWith<$Res> {
  factory _$AnimeStateCopyWith(
          _AnimeState value, $Res Function(_AnimeState) then) =
      __$AnimeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool loading,
      Anime anime,
      Failure failure,
      bool characterStaffLoading,
      CharacterStaff characterStaff,
      Failure characterStaffFailure,
      bool episodeLoading,
      List<Episode> episodes,
      Failure episodeFailure,
      bool picturesLoading,
      List<Picture> pictures,
      Failure picturesFailure});

  @override
  $AnimeCopyWith<$Res> get anime;
  @override
  $FailureCopyWith<$Res> get failure;
  @override
  $CharacterStaffCopyWith<$Res> get characterStaff;
  @override
  $FailureCopyWith<$Res> get characterStaffFailure;
  @override
  $FailureCopyWith<$Res> get episodeFailure;
  @override
  $FailureCopyWith<$Res> get picturesFailure;
}

/// @nodoc
class __$AnimeStateCopyWithImpl<$Res> extends _$AnimeStateCopyWithImpl<$Res>
    implements _$AnimeStateCopyWith<$Res> {
  __$AnimeStateCopyWithImpl(
      _AnimeState _value, $Res Function(_AnimeState) _then)
      : super(_value, (v) => _then(v as _AnimeState));

  @override
  _AnimeState get _value => super._value as _AnimeState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? anime = freezed,
    Object? failure = freezed,
    Object? characterStaffLoading = freezed,
    Object? characterStaff = freezed,
    Object? characterStaffFailure = freezed,
    Object? episodeLoading = freezed,
    Object? episodes = freezed,
    Object? episodeFailure = freezed,
    Object? picturesLoading = freezed,
    Object? pictures = freezed,
    Object? picturesFailure = freezed,
  }) {
    return _then(_AnimeState(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      anime: anime == freezed
          ? _value.anime
          : anime // ignore: cast_nullable_to_non_nullable
              as Anime,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
      characterStaffLoading: characterStaffLoading == freezed
          ? _value.characterStaffLoading
          : characterStaffLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      characterStaff: characterStaff == freezed
          ? _value.characterStaff
          : characterStaff // ignore: cast_nullable_to_non_nullable
              as CharacterStaff,
      characterStaffFailure: characterStaffFailure == freezed
          ? _value.characterStaffFailure
          : characterStaffFailure // ignore: cast_nullable_to_non_nullable
              as Failure,
      episodeLoading: episodeLoading == freezed
          ? _value.episodeLoading
          : episodeLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      episodes: episodes == freezed
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<Episode>,
      episodeFailure: episodeFailure == freezed
          ? _value.episodeFailure
          : episodeFailure // ignore: cast_nullable_to_non_nullable
              as Failure,
      picturesLoading: picturesLoading == freezed
          ? _value.picturesLoading
          : picturesLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      pictures: pictures == freezed
          ? _value.pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as List<Picture>,
      picturesFailure: picturesFailure == freezed
          ? _value.picturesFailure
          : picturesFailure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$_AnimeState implements _AnimeState {
  const _$_AnimeState(
      {required this.loading,
      required this.anime,
      required this.failure,
      required this.characterStaffLoading,
      required this.characterStaff,
      required this.characterStaffFailure,
      required this.episodeLoading,
      required this.episodes,
      required this.episodeFailure,
      required this.picturesLoading,
      required this.pictures,
      required this.picturesFailure});

  @override // Anime
  final bool loading;
  @override
  final Anime anime;
  @override
  final Failure failure;
  @override // Character Staff
  final bool characterStaffLoading;
  @override
  final CharacterStaff characterStaff;
  @override
  final Failure characterStaffFailure;
  @override // Episodes
  final bool episodeLoading;
  @override
  final List<Episode> episodes;
  @override
  final Failure episodeFailure;
  @override // Pictures
  final bool picturesLoading;
  @override
  final List<Picture> pictures;
  @override
  final Failure picturesFailure;

  @override
  String toString() {
    return 'AnimeState(loading: $loading, anime: $anime, failure: $failure, characterStaffLoading: $characterStaffLoading, characterStaff: $characterStaff, characterStaffFailure: $characterStaffFailure, episodeLoading: $episodeLoading, episodes: $episodes, episodeFailure: $episodeFailure, picturesLoading: $picturesLoading, pictures: $pictures, picturesFailure: $picturesFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AnimeState &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality().equals(other.anime, anime) &&
            const DeepCollectionEquality().equals(other.failure, failure) &&
            const DeepCollectionEquality()
                .equals(other.characterStaffLoading, characterStaffLoading) &&
            const DeepCollectionEquality()
                .equals(other.characterStaff, characterStaff) &&
            const DeepCollectionEquality()
                .equals(other.characterStaffFailure, characterStaffFailure) &&
            const DeepCollectionEquality()
                .equals(other.episodeLoading, episodeLoading) &&
            const DeepCollectionEquality().equals(other.episodes, episodes) &&
            const DeepCollectionEquality()
                .equals(other.episodeFailure, episodeFailure) &&
            const DeepCollectionEquality()
                .equals(other.picturesLoading, picturesLoading) &&
            const DeepCollectionEquality().equals(other.pictures, pictures) &&
            const DeepCollectionEquality()
                .equals(other.picturesFailure, picturesFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(anime),
      const DeepCollectionEquality().hash(failure),
      const DeepCollectionEquality().hash(characterStaffLoading),
      const DeepCollectionEquality().hash(characterStaff),
      const DeepCollectionEquality().hash(characterStaffFailure),
      const DeepCollectionEquality().hash(episodeLoading),
      const DeepCollectionEquality().hash(episodes),
      const DeepCollectionEquality().hash(episodeFailure),
      const DeepCollectionEquality().hash(picturesLoading),
      const DeepCollectionEquality().hash(pictures),
      const DeepCollectionEquality().hash(picturesFailure));

  @JsonKey(ignore: true)
  @override
  _$AnimeStateCopyWith<_AnimeState> get copyWith =>
      __$AnimeStateCopyWithImpl<_AnimeState>(this, _$identity);
}

abstract class _AnimeState implements AnimeState {
  const factory _AnimeState(
      {required bool loading,
      required Anime anime,
      required Failure failure,
      required bool characterStaffLoading,
      required CharacterStaff characterStaff,
      required Failure characterStaffFailure,
      required bool episodeLoading,
      required List<Episode> episodes,
      required Failure episodeFailure,
      required bool picturesLoading,
      required List<Picture> pictures,
      required Failure picturesFailure}) = _$_AnimeState;

  @override // Anime
  bool get loading;
  @override
  Anime get anime;
  @override
  Failure get failure;
  @override // Character Staff
  bool get characterStaffLoading;
  @override
  CharacterStaff get characterStaff;
  @override
  Failure get characterStaffFailure;
  @override // Episodes
  bool get episodeLoading;
  @override
  List<Episode> get episodes;
  @override
  Failure get episodeFailure;
  @override // Pictures
  bool get picturesLoading;
  @override
  List<Picture> get pictures;
  @override
  Failure get picturesFailure;
  @override
  @JsonKey(ignore: true)
  _$AnimeStateCopyWith<_AnimeState> get copyWith =>
      throw _privateConstructorUsedError;
}