import 'package:firstproje/shared/components/components.dart';
import 'package:firstproje/shared/cubit/cubit.dart';
import 'package:firstproje/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class ArchivedTasksScreen extends StatelessWidget {
  const ArchivedTasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit , AppStates>(
        listener:(context,state) => {},
        builder: (context , state) {
          var tasks = AppCubit.get(context).archivetasks;
          return TasksBulider(tasks: tasks);
        }
    );

  }
}
