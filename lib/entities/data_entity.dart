import 'package:flutter_redux_tutorial/entities/task_entity.dart';

class DataEntity {
    final List<TaskEntity> tasks;

    DataEntity(this.tasks);

    DataEntity fromJson(Map<String, dynamic> json) {
        return DataEntity((json['data'] as List).map((e) =>
        e == null ? null : TaskEntity.fromJson(e as Map<String, dynamic>))
            ?.toList(),
        );
    }

    Map<String, dynamic> toJson(DataEntity instance) =>
        <String, dynamic>{
            'data': instance.tasks,
        };
}