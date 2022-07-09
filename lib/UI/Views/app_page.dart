import 'package:dev_store/Bloc/App/app_bloc.dart';
import 'package:dev_store/Entities/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppPage extends StatefulWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(title: const Text('Counter')),
      body: BlocBuilder<AppBloc, AppState>(
        builder: (context, state) {
          if (state is AppInitial) {
            return Center(child: Text('${state.startAppModel}'));
          }
          if (state is AppLoadingState) {
            return const Center(child: Text('loading'));
          }
          if (state is AppStartedState) {
            List<User>? users = state.startAppModel.startApp.activeUsers;
            return ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(users![index].title.toString()),
                    subtitle: Text(users[index].pass.toString()),
                  ),
                );
              },
              itemCount: users?.length,
              shrinkWrap: true,
              padding: const EdgeInsets.all(5),
              scrollDirection: Axis.vertical,
            );
          }
          if (state is AppErrorState) {
            return Center(child: Text('${state.error}'));
          }
          return const Center(child: Text('non'));
        },
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () => context.read<AppBloc>().add(OnAppStartEvent()),
          ),
        ],
      ),
    );
  }
}
