class Photo {
  String imageUrl;
  double height;

  Photo(this.imageUrl, this.height);

  static List<Photo> generateImages() {
    return [
      Photo('assets/images/room.jpg', 170),
      Photo('assets/images/chair.png', 170),
      Photo('assets/images/sofa2.png', 170),
      Photo('assets/images/chair.png', 170),
      Photo('assets/images/sofa2.png', 170),
      Photo('assets/images/chair.png', 170),
      Photo('assets/images/sofa2.png', 170),
      Photo('assets/images/chair.png', 170),
      Photo('assets/images/sofa2.png', 170),
      Photo('assets/images/chair.png', 170),
      Photo('assets/images/sofa2.png', 170),
      Photo('assets/images/chair.png', 170),
      Photo('assets/images/sofa2.png', 170),
      Photo('assets/images/chair.png', 170),
      Photo('assets/images/sofa2.png', 170),
    ];
  }
}
