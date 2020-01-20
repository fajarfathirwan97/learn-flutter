import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class UserEvents extends Equatable {

}

class FetchUser extends UserEvents {}