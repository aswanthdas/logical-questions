import 'dart:io';

void main() {

  stdout.write('Enter the number of rows: ');
  int rows = int.parse(stdin.readLineSync()!);

  if (rows <= 0) {
    print('The number of rows must be a positive integer.');
    return;
  }

  for (int i = 0; i < rows; i++) {
    
    for (int j = 0; j < (rows - i - 1); j++) {
      stdout.write(' ');
    }

    
    for (int k = 0; k < (2 * i + 1); k++) {
      stdout.write('*');
    }

 
    stdout.writeln();
  }
}
