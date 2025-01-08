import 'package:myapp/app/app.locator.dart';
import 'package:myapp/services/counter_service.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel{
  final counterService = locator<CounterService>();
}