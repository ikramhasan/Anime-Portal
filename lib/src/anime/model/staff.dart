import 'package:freezed_annotation/freezed_annotation.dart';

part 'staff.freezed.dart';
part 'staff.g.dart';

@freezed
class Staff with _$Staff {
  const factory Staff({
    required String name,
    required int id,
    required String imageUrl,
    required String url,
    List<String>? positions,
  }) = _Staff;

  factory Staff.fromJson(Map<String, dynamic> json) => _$StaffFromJson(json);

  factory Staff.empty() => const _Staff(
        id: 0,
        imageUrl: '',
        name: '',
        positions: [],
        url: '',
      );
}
