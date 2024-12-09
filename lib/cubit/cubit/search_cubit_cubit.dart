import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'search_cubit_state.dart';

class SearchCubitCubit extends Cubit<SearchCubitState> {
  SearchCubitCubit() : super(SearchCubitInitial());
  final List tasks = [];
  List search(String text) {
    final List searchResult = tasks.where((element) {
      return element.contains(text);
    }).toList();
    emit(SearchCubitSuccess());
    return searchResult;
  }
}
