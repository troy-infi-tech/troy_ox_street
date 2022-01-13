import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:troy_ox_street/app/app.locator.dart';
import 'package:troy_ox_street/app/app.logger.dart';
import 'package:troy_ox_street/models/pagination_model.dart';
import 'package:troy_ox_street/models/product_model.dart';
import 'package:troy_ox_street/services/http_service.dart';

class HomeViewModel extends BaseViewModel {
  final log = getLogger('HomeViewModel');

  final HttpService _httpService = locator<HttpService>();

  List<ProductModel> products = [];
  PaginationModel pagination = PaginationModel(0, 100, 0);
  bool loading = false;
  ScrollController scrollController = ScrollController();

  void startLoading() {
    loading = true;

    notifyListeners();
  }

  void stopLoading() {
    loading = false;

    notifyListeners();
  }

  void updateData(response) {
    products.addAll(response.data!);
    pagination = response.pagination!;

    notifyListeners();
  }

  void loadData() async {
    startLoading();

    final response = await _httpService.fetchProducts(pagination.page! + 1);
    if (response.data!.isNotEmpty) {
      updateData(response);
    }

    stopLoading();
  }

  void initialise() {
    log.i('initialise');

    scrollController.addListener(onScroll);

    loadData();
  }

  void onScroll() {
    if (!loading &&
        (scrollController.position.pixels ==
            scrollController.position.maxScrollExtent) &&
        (pagination.totalCount! > (pagination.pageSize! * pagination.page!))) {
      loadData();
    }
  }
}
