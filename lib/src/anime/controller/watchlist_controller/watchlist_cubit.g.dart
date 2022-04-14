// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watchlist_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WatchlistState _$$_WatchlistStateFromJson(Map<String, dynamic> json) =>
    _$_WatchlistState(
      loading: json['loading'] as bool,
      failure: Failure.fromJson(json['failure'] as Map<String, dynamic>),
      watchlist: (json['watchlist'] as List<dynamic>)
          .map((e) => Top.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WatchlistStateToJson(_$_WatchlistState instance) =>
    <String, dynamic>{
      'loading': instance.loading,
      'failure': instance.failure,
      'watchlist': instance.watchlist,
    };
