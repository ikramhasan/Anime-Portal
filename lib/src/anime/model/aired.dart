import 'package:freezed_annotation/freezed_annotation.dart';

part 'aired.freezed.dart';
part 'aired.g.dart';

@freezed
class Aired with _$Aired {
  const factory Aired({
    String? from,
    String? string,
    String? to,
  }) = _Aired;

  factory Aired.fromJson(Map<String, dynamic> json) => _$AiredFromJson(json);

  factory Aired.empty() => const _Aired();
}
