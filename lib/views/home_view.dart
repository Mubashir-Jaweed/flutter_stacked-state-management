import 'package:flutter/material.dart';
import 'package:myapp/viewModels/counter_view_model.dart';
import 'package:myapp/viewModels/home_view_model.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => HomeViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(viewModel.counterService.counterValue.toString()),
                  
                ],
              ),
            ),
          );
        });
  }
}
