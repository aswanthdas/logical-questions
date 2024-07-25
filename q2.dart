import 'dart:io';

void main() {
 
  stdout.write('Enter the number of rows (odd number): ');
  int n = int.parse(stdin.readLineSync()!);

  
  if (n % 2 == 0) {
    print('The number of rows must be an odd number.');
    return;
  }

  
  int mid = n ~/ 2;

 
  for (int i = 0; i <= mid; i++) {
    for (int j = 0; j < (mid - i); j++) {
      stdout.write(' ');
    }
    for (int k = 0; k < (2 * i + 1); k++) {
      stdout.write('*');
    }
    stdout.writeln();
  }

  
  for (int i = mid - 1; i >= 0; i--) {
    for (int j = 0; j < (mid - i); j++) {
      stdout.write(' ');
    }
    for (int k = 0; k < (2 * i + 1); k++) {
      stdout.write('*');
    }
    stdout.writeln();
  }
}
