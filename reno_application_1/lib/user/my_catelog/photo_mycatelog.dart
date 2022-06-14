class Photo_mycatelog {
  String imageUrl;
  double height;

  Photo_mycatelog(this.imageUrl, this.height);

  static List<Photo_mycatelog> generateImages() {
    return [
      Photo_mycatelog('assets/images/chair.png', 150),
      Photo_mycatelog('assets/images/room.jpg', 150),
      Photo_mycatelog('assets/images/room.jpg', 150),
      Photo_mycatelog('assets/images/room.jpg', 150),
      Photo_mycatelog('assets/images/room.jpg', 150),
      Photo_mycatelog('assets/images/room.jpg', 150),
      Photo_mycatelog('assets/images/room.jpg', 150),
      Photo_mycatelog('assets/images/room.jpg', 150),
      Photo_mycatelog('assets/images/room.jpg', 150),
      Photo_mycatelog('assets/images/room.jpg', 150),
      Photo_mycatelog('assets/images/room.jpg', 150),
      Photo_mycatelog('assets/images/room.jpg', 150),
      Photo_mycatelog('assets/images/room.jpg', 150),
      Photo_mycatelog('assets/images/room.jpg', 150),
      Photo_mycatelog('assets/images/room.jpg', 150),
    ];
  }
}
