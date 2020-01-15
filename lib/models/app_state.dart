import 'package:flutter_redux_tutorial/models/app_bottom_tab.dart';
import 'package:flutter_redux_tutorial/models/task_model.dart';
import 'package:meta/meta.dart';

@immutable
class AppState {
    final bool isLoading;
    final List<Task> tasks;
    final AppBottomTab bottomTabActive;

    AppState({
        this.isLoading = false,
        this.tasks = const [],
        this.bottomTabActive = AppBottomTab.tasks
    });

    factory AppState.loading() => AppState(isLoading: true);

    AppState copyWith({
        bool isLoading,
        List<Task> tasks,
        AppBottomTab bottomTabActive,
    }) {
        return AppState(
            isLoading: isLoading ?? this.isLoading,
            tasks: tasks ?? this.tasks,
            bottomTabActive: bottomTabActive ?? this.bottomTabActive,
        );
    }

    @override
    int get hashCode =>
        isLoading.hashCode ^
        tasks.hashCode ^
        bottomTabActive.hashCode;

    @override
    bool operator ==(Object other) =>
        identical(this, other) ||
            other is AppState &&
                runtimeType == other.runtimeType &&
                isLoading == other.isLoading &&
                tasks == other.tasks &&
                bottomTabActive == other.bottomTabActive;

    @override
    String toString() {
        return 'AppState{isLoading: $isLoading, tasks: $tasks, bottomTabActive: $bottomTabActive}';
    }
}