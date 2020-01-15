
class TaskEntity {
    final bool complete;
    final String id;
    final String note;
    final String task;

    TaskEntity(this.task, this.id, this.note, this.complete);

    @override
    String toString() {
        return 'TodoEntity{complete: $complete, task: $task, note: $note, id: $id}';
    }

    factory TaskEntity.fromJson(Map<String, dynamic> json) {
        return TaskEntity(
            json['task'] as String,
            json['_id'] as String,
            json['note'] as String,
            json['complete'] as bool,
        );
    }

    Map<String, dynamic> toJson(TaskEntity instance) =>
        <String, dynamic>{
            'complete': instance.complete,
            '_id': instance.id,
            'note': instance.note,
            'task': instance.task,
        };
}