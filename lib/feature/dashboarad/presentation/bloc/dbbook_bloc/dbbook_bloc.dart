import 'package:bookapp/feature/dashboarad/data/model/dbbook_model.dart';
import 'package:bookapp/feature/dashboarad/domain/usecase/usecase_localsorage.dart';
import 'package:bookapp/feature/dashboarad/presentation/bloc/dbbook_bloc/dbbook_event.dart';
import 'package:bookapp/feature/dashboarad/presentation/bloc/dbbook_bloc/dbbook_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DBBookBloc extends Bloc<DBBookEvent, DBBookState> {
  UseCaseLocalStorage useCaseLocalStorage = UseCaseLocalStorage();
  DBBookBloc() : super(DBBookInitial());
  @override
  Stream<DBBookState> mapEventToState(DBBookEvent event) async* {
    if (event is DBBookInsert) {
      yield* _insertToLocal(event.dbBookModel);
    }
  }

  Stream<DBBookState> _insertToLocal(DBBookModel dbBookModel) async* {
    try {
      useCaseLocalStorage.insert(dbBookModel);
      yield DBBookDoneInsert('success');
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
