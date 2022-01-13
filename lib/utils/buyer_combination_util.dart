class BuyerCombinationUtil {
  List<List<int>> listOutBuyerCombinations(
      int buyerAmount,
      List<int> possiblePurchaseAmounts,
      List<int> history,
      List<List<int>> combinations) {
    try {
      if (buyerAmount == 0) {
        combinations.add(history.toList());
        return combinations;
      }

      for (int possiblePurchaseAmount in possiblePurchaseAmounts) {
        if (buyerAmount - possiblePurchaseAmount >= 0) {
          List<int> purchaseAmounts = history.toList();
          purchaseAmounts.add(possiblePurchaseAmount);

          listOutBuyerCombinations(buyerAmount - possiblePurchaseAmount,
              possiblePurchaseAmounts, purchaseAmounts, combinations);
        }
      }

      return combinations.toSet().toList();
    } catch (error) {
      return [];
    }
  }
}
