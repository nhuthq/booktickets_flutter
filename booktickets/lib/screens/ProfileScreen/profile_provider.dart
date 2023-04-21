import 'package:booktickets/utils/app_info_list.dart';
import 'package:flutter/widgets.dart';

class ProfileProvider extends ChangeNotifier {
  final _flightHistories = flightHistoryList;

  num getTotalMile() {
    num totalMiles = 0;
    _flightHistories.forEach((element) {
      totalMiles += element['miles'];
    });
    return totalMiles;
  }

  List<Map<String, dynamic>> getFlightHistories() => _flightHistories;
}
