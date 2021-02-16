import 'dart:convert';

import 'package:flutter/foundation.dart';

class UserModel {
  final String uid;
  final String name;
  final String email;
  final List<int> watchlist;
  final List<int> finishedWatching;
  UserModel({
    this.uid,
    this.name,
    this.email,
    this.watchlist,
    this.finishedWatching,
  });

  UserModel copyWith({
    String uid,
    String name,
    String email,
    List<int> watchlist,
    List<int> finishedWatching,
  }) {
    return UserModel(
      uid: uid ?? this.uid,
      name: name ?? this.name,
      email: email ?? this.email,
      watchlist: watchlist ?? this.watchlist,
      finishedWatching: finishedWatching ?? this.finishedWatching,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'name': name,
      'email': email,
      'watchlist': watchlist,
      'finishedWatching': finishedWatching,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return UserModel(
      uid: map['uid'],
      name: map['name'],
      email: map['email'],
      watchlist: List<int>.from(map['watchlist']),
      finishedWatching: List<int>.from(map['finishedWatching']),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserModel(uid: $uid, name: $name, email: $email, watchlist: $watchlist, finishedWatching: $finishedWatching)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is UserModel &&
        o.uid == uid &&
        o.name == name &&
        o.email == email &&
        listEquals(o.watchlist, watchlist) &&
        listEquals(o.finishedWatching, finishedWatching);
  }

  @override
  int get hashCode {
    return uid.hashCode ^
        name.hashCode ^
        email.hashCode ^
        watchlist.hashCode ^
        finishedWatching.hashCode;
  }
}
