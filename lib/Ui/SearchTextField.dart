import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/cubit/cubit/search_cubit_cubit.dart';
import 'package:todo_app/helper/CustomTextField.dart';

class SearchTextfield extends StatelessWidget {
  const SearchTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      onChanged:(text) {
        BlocProvider.of<SearchCubitCubit>(context).search(text);
      },
      iconData: IconButton(
        icon: const Icon(Icons.search),
        onPressed: () {},
      ),
      label: 'Search',
      hintText: 'Enter Task',
    );
  }
}
