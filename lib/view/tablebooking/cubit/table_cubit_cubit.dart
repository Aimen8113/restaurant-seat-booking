import 'package:bloc/bloc.dart';


class TableCubit extends Cubit<String?> {
  TableCubit() : super(null);

  void selectTable(String table) => emit(table);
}
