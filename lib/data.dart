class Items {
  final int id;
  final String imageFileName;

  Items(
    {required this.id,
    required this.imageFileName,});
}

class AppDatabase {
  static List<Items> get items {
    return [
      Items(
          id: 1001,
          imageFileName: 'products_1.jpg',),
      Items(
          id: 1002,
          imageFileName: 'products_2.jpg',),
      Items(
          id: 1003,
          imageFileName: 'products_3.jpg',),
      Items(
          id: 1004,
          imageFileName: 'products_4.jpg',),
      Items(
          id: 1005,
          imageFileName: 'products_5.jpg',),
    ];
  }
}