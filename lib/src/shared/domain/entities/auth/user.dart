import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@Freezed(copyWith: true)
sealed class User with _$User {
  const User._();

  factory User({
    String? id,
    @Default('') String name,
    required String phoneNumber,
  }) = _User;

  String get buildUniqueId => phoneNumber.replaceAll(RegExp(r'[^\d]'), '');
  String get rawPhoneNumber => phoneNumber.replaceAll(RegExp(r'[^+\d]'), '');
}
