# bloc_state_management_example

Beginners to advance level concepts cover

## Getting Started

1. Equatable 
   - It's used  for compare objects of value
   here, person name="mansi"
   age = 25

   both object have same value so below function is check and compare of object value
   */
   @override
   bool operator ==(Object other) {
   return identical(this, other) ||
   other is Person &&
   runtimeType == other.runtimeType &&
   name == other.name &&
   age == other.age;
   }

   @override
   int get hashCode => Object.hash(name.hashCode, age.hashCode);
   }
- so above the code we will more code to write manually but using equatable it's generate automatically.

2. Bloc,State,Event
   State : It's current state of application that is immutable class.
   Bloc : It means business logic component i.e used to manage the state. 
   Event : It's used for user activities or other actions that can alter the application's state. 
   copyWith : It's used for create new instance of class or value could be changed.