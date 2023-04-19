import 'package:flutter/foundation.dart';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String task2Result = await task2();
  // print(task2());
  task3(task2Result);
}

void task1() {
  if (kDebugMode) {
    print('Task 1 complete');
  }
}

Future<String> task2() async {
  Duration threeSeconds = const Duration(seconds: 3);

  late String result;

  await Future.delayed(threeSeconds, () {
    result = 'task 2 data';
    if (kDebugMode) {
      print('Task 2 complete');
    }
  });

  return result;
}

void task3(String task2data) {
  if (kDebugMode) {
    print('Task 3 complete with $task2data');
  }
}
