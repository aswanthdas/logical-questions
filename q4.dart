import 'dart:io';

void printDiamondPattern(int n) {
  
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

void main() {
  // Read the number of rows from the user
  stdout.write('Enter the number of rows (odd number): ');
  int rows = int.parse(stdin.readLineSync()!);

  // Validate that the number of rows is positive and odd
  if (rows <= 0 || rows % 2 == 0) {
    print('The number of rows must be a positive odd integer.');
    return;
  }

  // Print the diamond pattern
  printDiamondPattern(rows);
}
