class BinarySearch {
  int? execute(List<int> list, int item) {
    int low = 0;
    int high = list.length - 1;

    while (low <= high) {
      final mid = ((low + high) / 2).floor();
      final guess = list[mid];
      if (guess == item) {
        return mid;
      } else if (guess < item) {
        low = mid + 1;
      } else {
        high = mid - 1;
      }
    }
  }
}
