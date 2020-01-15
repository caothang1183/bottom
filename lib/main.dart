import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_tutorial/presentation/home_page.dart';
import 'package:flutter_redux_tutorial/redux/actions/task_action.dart';
import 'package:flutter_redux_tutorial/redux/reducer/app_state_reducer.dart';
import 'package:flutter_redux_tutorial/routes.dart';
import 'package:redux/redux.dart';

import 'models/app_state.dart';

void main() => runApp(App());

class App extends StatelessWidget {

    final store = Store<AppState>(
        appReducer,
        initialState: AppState.loading(),
    );

    @override
    Widget build(BuildContext context) {
        return StoreProvider(
            store: store,
            child: MaterialApp(
                title: 'Flutter Demo',
                theme: ThemeData(
                    primarySwatch: Colors.blue,
                ),
                routes: {
                    AppRoutes.home: (context) {
                        return HomeScreen(
                            onInit: () {
                                StoreProvider.of<AppState>(context).dispatch(LoadTaskAction());
                            },
                        );
                    }
                },
            ),
        );
    }
}

