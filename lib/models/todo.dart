// ignore_for_file: public_member_api_docs, sort_constructors_first
class Todo {
  Todo({required this.name, required this.createdAt});
  final String name;
  final DateTime createdAt;

  @override
  String toString() => 'Todo(name: $name, createdAt: $createdAt)';
}
