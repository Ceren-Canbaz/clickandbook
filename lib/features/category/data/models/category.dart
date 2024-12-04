import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String id;
  final String name;
  final String photo;

  const Category({required this.id, required this.name, required this.photo});

  factory Category.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data() as Map;
    return Category(
      id: doc.id,
      name: data['name'] ?? '',
      photo: data['photo'] ?? '',
    );
  }

  @override
  List<Object?> get props => [
        id,
        name,
        photo,
      ];
}
