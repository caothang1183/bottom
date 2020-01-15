import 'package:flutter_redux_tutorial/models/app_state.dart';
import 'package:flutter_redux_tutorial/redux/reducer/bottom_tab_reducer.dart';
import 'package:flutter_redux_tutorial/redux/reducer/loading_reducer.dart';
import 'package:flutter_redux_tutorial/redux/reducer/task_reducer.dart';

AppState appReducer(AppState state, action) {
    return AppState(
        isLoading: loadingReducer(state.isLoading, action),
        tasks: tasksReducer(state.tasks, action),
        bottomTabActive: bottomTabReducer(state.bottomTabActive, action),
    );
}
