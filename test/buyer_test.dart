import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:troy_ox_street/utils/buyer_combination_util.dart';

void main() {
  test('combination of buyers that buy 1 or 2 sneaker combinations', () {
    final buyerCombinationUtil = BuyerCombinationUtil();
    if (kDebugMode) {
      print("3 buyers combinations of 1 or 2 possible amounts");
    }
    printOut(buyerCombinationUtil.listOutBuyerCombinations(3, [1, 2], [], []));
    if (kDebugMode) {
      print("4 buyers combinations of 1 or 2 possible amounts");
    }
    printOut(buyerCombinationUtil.listOutBuyerCombinations(4, [1, 2], [], []));
    if (kDebugMode) {
      print("7 buyers combinations of 1, 2 or 3 possible amounts");
    }
    printOut(
        buyerCombinationUtil.listOutBuyerCombinations(5, [1, 2, 3], [], []));
  });
}

void printOut(List<List<int>> combinations) {
  for (List<int> combination in combinations) {
    if (kDebugMode) {
      print(combination.join("-"));
    }
  }
}
