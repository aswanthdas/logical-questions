import 'dart:io';

void printNumberPattern(int rows) {
  for (int i = 1; i <= rows; i++) {
    
    for (int j = 0; j < i; j++) {
      stdout.write('$i');
    }
    stdout.writeln(); 
  }
}

void main() {
  
  stdout.write('Enter the number of rows: ');
  int rows = int.parse(stdin.readLineSync()!);

 
  if (rows <= 0) {
    print('The number of rows must be a positive integer.');
    return;
  }

  
  printNumberPattern(rows);
}
