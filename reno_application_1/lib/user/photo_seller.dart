class Photo_seller {
  String imageUrl;
  double height;

  Photo_seller(this.imageUrl, this.height);

  static List<Photo_seller> generateImages() {
    return [
      Photo_seller('assets/images/chair.png', 150),
      Photo_seller('assets/images/room.jpg', 150),
      Photo_seller('assets/images/room.jpg', 150),
      Photo_seller('assets/images/room.jpg', 150),
      Photo_seller('assets/images/room.jpg', 150),
      Photo_seller('assets/images/room.jpg', 150),
      Photo_seller('assets/images/room.jpg', 150),
      Photo_seller('assets/images/room.jpg', 150),
      Photo_seller('assets/images/room.jpg', 150),
      Photo_seller('assets/images/room.jpg', 150),
      Photo_seller('assets/images/room.jpg', 150),
      Photo_seller('assets/images/room.jpg', 150),
      Photo_seller('assets/images/room.jpg', 150),
      Photo_seller('assets/images/room.jpg', 150),
      Photo_seller('assets/images/room.jpg', 150),
    ];
  }
}
