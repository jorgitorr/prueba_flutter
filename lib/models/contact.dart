import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Contact {
  int id;
  String first_name;
  String last_name;
  String phone;
  int pinner;
  bool deleted;
  Contact({
    required this.id,
    required this.first_name,
    required this.last_name,
    required this.phone,
    required this.pinner,
    required this.deleted,
  });

//crea una copia que no apunta al mismo punto de memoria
  Contact copyWith({
    int? id,
    String? first_name,
    String? last_name,
    String? phone,
    int? pinner,
    bool? deleted,
  }) {
    return Contact(
      id: id ?? this.id,
      first_name: first_name ?? this.first_name,
      last_name: last_name ?? this.last_name,
      phone: phone ?? this.phone,
      pinner: pinner ?? this.pinner,
      deleted: deleted ?? this.deleted,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'first_name': first_name,
      'last_name': last_name,
      'phone': phone,
      'pinner': pinner,
      'deleted': deleted,
    };
  }

  factory Contact.fromMap(Map<String, dynamic> map) {
    return Contact(
      id: map['id'] as int,
      first_name: map['first_name'] as String,
      last_name: map['last_name'] as String,
      phone: map['phone'] as String,
      pinner: map['pinner'] as int,
      deleted: map['deleted'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory Contact.fromJson(String source) =>
      Contact.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Contact(id: $id, first_name: $first_name, last_name: $last_name, phone: $phone, pinner: $pinner, deleted: $deleted)';
  }

  @override
  bool operator ==(covariant Contact other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.first_name == first_name &&
        other.last_name == last_name &&
        other.phone == phone &&
        other.pinner == pinner &&
        other.deleted == deleted;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        first_name.hashCode ^
        last_name.hashCode ^
        phone.hashCode ^
        pinner.hashCode ^
        deleted.hashCode;
  }
}
