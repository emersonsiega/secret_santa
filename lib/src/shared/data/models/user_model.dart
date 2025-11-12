import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:secret_santa/src/shared/domain/entities/auth/user.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
sealed class UserModel with _$UserModel {
  const UserModel._();

  factory UserModel({
    @JsonKey(name: "\$id") required String id,
    @Default('') String name,
    @JsonKey(name: "phone") @Default('') String phoneNumber,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

  User toEntity() => User(
    id: id,
    name: name,
    phoneNumber: phoneNumber,
  );
}
