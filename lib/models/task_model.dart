import 'package:flutter_redux_tutorial/entities/task_entity.dart';
import 'package:meta/meta.dart';

@immutable
class Task {
    final bool complete;
    final String id;
    final String note;
    final String task;

    Task(this.task, {this.complete = false, String note = '', String id})
        : this.note = note ?? '',
            this.id = id ?? '';

    Task copyWith({bool complete, String id, String note, String task}) {
        return Task(
            task ?? this.task,
            complete: complete ?? this.complete,
            id: id ?? this.id,
            note: note ?? this.note,
        );
    }

    @override
    int get hashCode =>
        complete.hashCode ^ task.hashCode ^ note.hashCode ^ id.hashCode;

    @override
    bool operator ==(Object other) =>
        identical(this, other) ||
            other is Task &&
                runtimeType == other.runtimeType &&
                complete == other.complete &&
                task == other.task &&
                note == other.note &&
                id == other.id;

    @override
    String toString() {
        return 'Todo{complete: $complete, task: $task, note: $note, id: $id}';
    }

    TaskEntity toEntity() {
        return TaskEntity(task, id, note, complete);
    }

    static Task fromEntity(TaskEntity entity) {
        return Task(
            entity.task,
            complete: entity.complete ?? false,
            note: entity.note,
            id: entity.id,
        );
    }
}