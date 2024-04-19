//positional and named parameters

void add(a, b) { // a & b are positional parameters
  print(a + b); // print() is a built-in function that will be explained later
}

// add(5, 10); // 5 is used as a value for a, because it's the first argument; 10 is used as a value for b


void add2({a, b}) { // a & b are named parameters (because of the curly braces)
print(a + b);
}

// add(b: 5, a: 10); // 5 is used as a value for b, because it's assigned to that name; 10 is used as a value for a


void add3(a, [b]) { // b is optional
print(a + b);
}

void add4(a, [b = 5]) { // b is optional, 5 will be used as a default value
print(a + b);
}
// add(10); // b would still be 5 because it's not overwritten
// add(10, 6); // here, b would be 6

void add5({a, b = 5}) { // b has a default value of 5
print(a + b);
}

// add(b: 10); // for b, 10 would be used instead of 5; a has no default value and would be "null" here => a special value type you'll learn about throughout this course

void add6({required a, required b}) { // a & b are no longer optional
print(a + b);
}
