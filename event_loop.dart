import 'dart:async';

void main() {
  print('1: Main Starts (Sync Code)');

  // Scheduled into Event Queue
  Future(() {
    print('7: Standard Future (Event Queue)');
  });

  // Scheduled into Event Queue
  Future.delayed(Duration.zero, () {
    print('8: Delayed Future (Event Queue)');
  });

  // Scheduled into Microtask Queue
  Future.microtask(() {
    print('4: Future.microtask (Microtask Queue)');
  });

  // Scheduled into Microtask Queue
  scheduleMicrotask(() {
    print('5: scheduleMicrotask (Microtask Queue)');
  });

  // async/await execution flow
  asyncExample();

  print('3: Main Ends (Sync Code)');
}

Future<void> asyncExample() async {
  print('2: Inside asyncExample - Sync before await');

  // await pauses execution and schedules the remaining function code into Microtask Queue
  await Future.value('Done');

  print('6: Inside asyncExample - After await (Microtask Queue)');
}
