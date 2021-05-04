class SelectionSort {
  List<int> execute(List<int> list) {
    final size = list.length;
    for (int i = 0; i < size; i++) {
      for (int j = i; j < size; j++) {
        if (list[i] > list[j]) {
          // swap
          final temp = list[j];
          list[j] = list[i];
          list[i] = temp;
        }
      }
    }
    return list;
  }
}
