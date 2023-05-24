import 'package:bookapp/feature/dashboarad/data/model/dbbook_model.dart';
import 'package:equatable/equatable.dart';

abstract class DBBookEvent extends Equatable {}

class DBBookInsert implements DBBookEvent {
  final DBBookModel dbBookModel;
  DBBookInsert(this.dbBookModel);
  @override
  List<Object?> get props => [];

  @override
  bool get stringify => false;
}
