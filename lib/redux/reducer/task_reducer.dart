import 'package:flutter_redux_tutorial/models/task_model.dart';
import 'package:flutter_redux_tutorial/redux/actions/task_action.dart';
import 'package:redux/redux.dart';

final tasksReducer = combineReducers<List<Task>>([
    TypedReducer<List<Task>, TasksLoadedAction>(_setLoadedTasks),
    TypedReducer<List<Task>, TasksNotLoadedAction>(_setNoTasks),
]);

List<Task> _setLoadedTasks(List<Task> tasks, TasksLoadedAction action) {
    return action.tasks;
}

List<Task> _setNoTasks(List<Task> tasks, TasksNotLoadedAction action) {
    return [];
}
