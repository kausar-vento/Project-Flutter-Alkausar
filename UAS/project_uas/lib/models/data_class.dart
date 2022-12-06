class DataClass {
  String id;
  String avatar;
  String nama;
  String alamat;
  String email;
  String pekerjaan;
  String quote;

  DataClass(
      {required this.id,
      required this.avatar,
      required this.nama,
      required this.alamat,
      required this.email,
      required this.pekerjaan,
      required this.quote});

  factory DataClass.fromJson(Map<String, dynamic> json) {
    return DataClass(
        id: json['id'],
        avatar: json['avatar'],
        nama: json['nama'],
        alamat: json['alamat'],
        email: json['email'],
        pekerjaan: json['pekerjaan'],
        quote: json['quote']);
  }
}
