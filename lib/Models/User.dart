import 'package:equatable/equatable.dart';

class User extends Equatable {
  final id;
  final first_name;
  final last_name;
  final gender;
  final dob;
  final email;
  final phone;
  final website;
  final address;
  final status;

  User(this.id, this.first_name, this.last_name, this.gender, this.dob,
      this.email, this.phone, this.website, this.address, this.status)
      : super([
          id,
          first_name,
          last_name,
          gender,
          dob,
          email,
          phone,
          website,
          address,
          status,
        ]);
}
