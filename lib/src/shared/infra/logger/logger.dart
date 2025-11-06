import 'package:intl/intl.dart';
import 'package:logger/logger.dart';
import 'package:secret_santa/src/shared/infra/logger/custom_printer.dart';

Logger logger = Logger(
  level: Level.debug,
  printer: CustomPrinter(
    methodCount: 0,
    errorMethodCount: 7,
    dateTimeFormat: (time) => DateFormat('dd-MM-yyyy HH:mm:ss').format(time),
  ),
);
