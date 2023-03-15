import '../../libruary.dart';
import 'SelectService.dart';

class SelectProvider extends ChangeNotifier {
  bool isLoading = false;
  set(isLoading2) {
    isLoading = isLoading2;
    notifyListeners();
  }

  List<dynamic> data = [];

  Future<void> getdata() async {
    set(true);
    data = await SelectService().selectservice();
    set(false);
  }
}