import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

class EquatableTesting extends StatefulWidget {
  const EquatableTesting({super.key});

  @override
  State<EquatableTesting> createState() => _EquatableTestingState();
}

class _EquatableTestingState extends State<EquatableTesting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Person person = Person(name: 'Mansi', age: 25);
          Person person1 = Person(name: 'Mansi', age: 25);

          print(person == person1);
        },
      ),
    );
  }
}

class Person extends Equatable{
  final String name;
  final int age;

  const Person({required this.name, required this.age});

  @override
  List<Object?> get props => throw [name,age];

  // // it is check for object value is equal or not
  //
  // /*
  // here, person name="mansi"
  // age = 25
  //
  // both object have same value so below function is check and compare of object value
  //  */
  // @override
  // bool operator ==(Object other) {
  //   return identical(this, other) ||
  //       other is Person &&
  //           runtimeType == other.runtimeType &&
  //           name == other.name &&
  //           age == other.age;
  // }
  //
  // @override
  // int get hashCode => Object.hash(name.hashCode, age.hashCode);
}
