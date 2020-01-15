import 'package:flutter_redux_tutorial/models/task_model.dart';

class LoadTaskAction {}

class TasksNotLoadedAction {}

class TasksLoadedAction {
    final List<Task> tasks;

    TasksLoadedAction(this.tasks);

    @override
    String toString() {
        return 'TasksLoadedAction{tasks: $tasks}';
    }
}