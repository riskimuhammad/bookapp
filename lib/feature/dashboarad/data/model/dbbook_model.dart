class DBBookModel {
  String? codeBook;
  String? title;
  String? description;
  String? date;
  String? categpry;
  double? harga;
  bool? cover;

  DBBookModel(this.codeBook, this.cover, this.date, this.description,
      this.harga, this.title, this.categpry);

  DBBookModel.fromJson(dynamic json) {
    codeBook = json['code_book'];
    cover = json['cover'];
    date = json['date'];
    description = json['description'];
    harga = json['harga'];
    title = json['title'];
    categpry = json['category'];
  }

  Map<String, Object> toJson() {
    final Map<String, Object> data = new Map<String, Object>();

    return data;
  }
}
