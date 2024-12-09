class TaskModel {
  final String taskName;
  bool value;
  final String id;

  TaskModel({required this.taskName, required this.id, this.value = false});
  factory TaskModel.fromjson(dynamic jsondata) {
    return TaskModel(
        taskName: jsondata['taskName'],
        id: jsondata.id,
        value: jsondata['value']);
  }
}
