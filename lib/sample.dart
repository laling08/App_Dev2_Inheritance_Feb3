import 'dart:ffi';

class Laptop {
  Laptop ({var name, var color}) {
    print ("=== Laptop Constructor");
    print("Name : $name");
    print("Color: $color");
  }
}

/**
 * Named constructor of parent class in dart
 */
class Laptop2 {
  // Default Constructor
  Laptop2 () {
    print ("=== Laptop2 Constructor ==");
  }

  // Named Constructor
  Laptop2.named() {
    print("=== Laptop named constructor ===");
  }
}

class MacBook extends Laptop2 {
  // constructor
  MacBook() : super.named() {
    print ("== macbook constructor ==");
  }
}

int pow (int x, [int y = 2]) {
  int r = 1;
  for (int i = 0; i < y; i ++) {
    r *= x;
  }
  return r;
}

int checkValue (int? someValue) {
  if (someValue == null) {
    return 0;
  }
  // At this point the value is not null
  return someValue.abs();
}

void main() {
  print (checkValue(5));
  print (checkValue(null));

  // print (pow(2,2));
  // print (pow(2,4));
  // print (pow(3));

  var value;
  // print (value.toLowerCase()); // will crash
  // print (value?.toLowerCase()); // will crash
  print (value?.toLowerCase()?.toUpperCase()); // output is null

}
