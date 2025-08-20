class UserModel {
  final int uid;
  final int phone;
  final String? name;
  final String? imageUrl;

  UserModel({
    required this.uid,
    required this.phone,
    required this.name,
    required this.imageUrl,
  });

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'phone': phone,
      'name': name,
      'imageUrl': imageUrl,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uid: map['uid'],
      phone: map['phone'],
      name: map['name'],
      imageUrl: map['imageUrl'],
    );
  }
}
