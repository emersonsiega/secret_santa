import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@Freezed(copyWith: true)
sealed class User with _$User {
  const User._();

  factory User({
    String? id,
    @Default('') String name,
    required String phoneNumber,
  }) = RegularUser;

  factory User.anonymous() = AnonymousUser;

  String get buildUniqueId {
    if (this case RegularUser(:final phoneNumber)) {
      phoneNumber.replaceAll(RegExp(r'[^\d]'), '');
    }
    return '';
  }

  String get rawPhoneNumber {
    if (this case RegularUser(:final phoneNumber)) {
      phoneNumber.replaceAll(RegExp(r'[^+\d]'), '');
    }
    return '';
  }
}
