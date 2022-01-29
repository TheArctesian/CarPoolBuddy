import 'dart:core';

class Vehicle {
  var name;
  var capacity;
  List<User> riders = [];


  addRider(User user) {
    if (riders.length < capacity) {
      riders.add(user);
    }
  }

  removeRider(User user) {
    riders.remove(user);
  }

  printRiders() {
    print(riders);
  }
}

class User {
  var uid;
  var name;
  var email;
  var userType;
  List<Vehicle> vehicles = [];

  void addVehicle(Vehicle vehicle) {
    if (vehicles.length < 3) {
      vehicles.add(vehicle);
    }
  }

  void removeVehicle(Vehicle vehicle) {
    vehicles.remove(vehicle);
  }
}
