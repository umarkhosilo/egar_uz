import 'package:l/Trips/RantalesService.dart';
import '../libruary.dart';

class RantelesProvider extends ChangeNotifier {
  bool isLoading = false;
  set(isLoading2) {
    isLoading = isLoading2;
    notifyListeners();
  }

  List<dynamic> data = [];

  Future<void> getdata() async {
    set(true);
    data = await RantalesService().rantalesservice();
    set(false);
  }
}
