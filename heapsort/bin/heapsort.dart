void heapsort(List<int> array) {
  int n = array.length;
  for (int i = (n ~/ 2) - 1; i >= 0; i--) {
    heapify(array, n, i);
  }
  for (int i = n - 1; i >= 0; i--) {
    int temp = array[0];
    array[0] = array[i];
    array[i] = temp;
    heapify(array, i, 0);
  }
}

void heapify(List<int> array, int n, int i) {
  int largest = i;
  int left = 2 * i + 1;
  int right = 2 * i + 2;
  if (left < n && array[left] > array[largest]) {
    largest = left;
  }
  if (right < n && array[left] > array[largest]) {
    largest = right;
  }
  if (largest != i) {
    int temp = array[i];
    array[i] = array[largest];
    array[largest] = temp;

    heapify(array, n, largest);
  }
}

void main(List<String> args) {
  List<int> array = [64, 25, 12, 22, 11];
  heapsort(array);
  print(array);
}
