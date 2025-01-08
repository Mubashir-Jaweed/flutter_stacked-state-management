import 'package:myapp/app/app.locator.dart';
import 'package:myapp/app/app.router.dart';
import 'package:myapp/services/counter_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class CounterViewModel extends BaseViewModel{
  final navigatorService = locator<NavigationService>();
  final counterService = locator<CounterService>();

addValue(){
  counterService.addCounterValue();
  rebuildUi();
}

  navigateToHome(){
    navigatorService.navigateToHomeView();
  }
}