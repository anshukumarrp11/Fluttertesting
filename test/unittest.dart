import 'package:flutter_test/flutter_test.dart';
import 'package:fluttertesting/main.dart';

void main() {
  test('String is reversed', () {
    String initial = "Hello";
    String rfytfty = reverseString(initial);
    expect(rfytfty, 'olleH');
  });
}
