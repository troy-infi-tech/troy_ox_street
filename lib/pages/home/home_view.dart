import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:troy_ox_street/widgets/product_card.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      onModelReady: (viewModel) => viewModel.initialise(),
      builder: (context, viewModel, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "Troy OX Street",
            style: TextStyle(color: Colors.pink[700]),
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: GridView.count(
                  controller: viewModel.scrollController,
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 3 / 4,
                  padding: const EdgeInsets.all(10),
                  children: viewModel.products
                      .map((product) => ProductCard(product: product))
                      .toList(),
                ),
              ),
              viewModel.loading
                  ? const Center(child: LinearProgressIndicator())
                  : const SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
