import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';

class Server {
  CollectionReference tasks = FirebaseFirestore.instance.collection('tasks');

  Future<void> addTask({required String taskName}) async {
    String taskid = const Uuid().v4();
    bool value = false;
    await tasks.add(
      {
        'taskName': taskName,
        'taskid': taskid,
        'value': value,
      },
    );
  }

  Future<void> updateTask({required String taskid, required bool value}) async {
    await tasks.doc(taskid).update({'value': value});
  }
  Future<void> deleteTask({required String taskid}) async {
    await tasks.doc(taskid).delete();
  }
}
