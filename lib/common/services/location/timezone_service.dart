import 'package:flutter_timezone/flutter_timezone.dart';

class TimeZoneService {
  Future<String> getTimeZoneId() async {
    return FlutterTimezone.getLocalTimezone();
    // return _timezoneNames[DateTime.now().toLocal().timeZoneOffset.inMilliseconds];
  }
}
