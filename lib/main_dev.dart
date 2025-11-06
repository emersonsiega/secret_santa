import 'package:secret_santa/src/shared/config/bootstrap.dart';
import 'package:secret_santa/src/shared/domain/entities/config/flavors.dart';

Future<void> main() async {
  F.appFlavor = Flavor.dev;
  await bootstrap();
}
