import 'package:secret_santa/src/shared/domain/failures/async_request_failure.dart';
import 'package:secret_santa/src/shared/presentation/i18n/translations.g.dart';

extension AsyncRequestFailureExt on AsyncRequestFailure {
  String localized() {
    return switch (this) {
      UnknownFailure(:final message) => message ?? t.genericError,
      InaccessibleFailure(:final message) => message ?? t.genericError,
      InvalidArgumentsFailure() => t.invalidRequest,
      AuthFailure(:final message) => message ?? t.genericError,
    };
  }
}
