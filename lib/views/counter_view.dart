import 'package:flutter/material.dart';
import 'package:myapp/viewModels/counter_view_model.dart';
import 'package:stacked/stacked.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => CounterViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            body: SafeArea(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 40,
                  children: [
                    Text(viewModel.counterService.counterValue.toString()),
                    ElevatedButton(
                      onPressed: () {
                        viewModel.addValue();
                      },
                      child: Text('Add Counter Value'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        viewModel.navigateToHome();                      },
                      child: Text('Navigate  to home'),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
