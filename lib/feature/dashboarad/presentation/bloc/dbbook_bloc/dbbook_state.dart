import 'package:equatable/equatable.dart';

abstract class DBBookState extends Equatable {}

class DBBookInitial implements DBBookState {
  @override
  List<Object?> get props => [];

  @override
  bool get stringify => false;
}

class DBBookDoneInsert implements DBBookState {
  final String message;
  DBBookDoneInsert(this.message);
  @override
  List<Object?> get props => [];

  @override
  bool get stringify => false;
}
