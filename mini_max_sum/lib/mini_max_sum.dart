void miniMaxSum(List<int> arr) {
  if(arr.length != 5){
    print('Input invalid');
    return;
  }
  int total = 0;
  int minElement = arr[0];
  int maxElement = arr[0];

  // List<int> evenElements = [];
  // List<int> oddElements = [];

  for (int element in arr) {
    total += element;

    //Find max in array
    if (element > maxElement) {
      maxElement = element;
    }
    //Find min in array
    if (element < minElement) {
      minElement = element;
    }

  //Find even and Odd (Bouns)
    //  if (element % 2 == 0) {
    //   evenElements.add(element);
    // } else {
    //   oddElements.add(element);
    // }
  }

  int minSum = total - maxElement;
  int maxSum = total - minElement;

  print('$minSum $maxSum');

  //Bouns:
  // print('Total of array: $total');
  // print('Max in array: $maxElement');
  // print('Min in array: $minElement');
  // print('Even elements in array: $evenElements');
  // print('Odd elements in array: $oddElements');
}


void main() {
  List<int> inputNumbers = [-1, -2, 0, 0, 0];
  miniMaxSum(inputNumbers);
}
