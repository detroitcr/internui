class HomeCardData {
  final String title;
  final String imageUrl;

  HomeCardData({required this.imageUrl, required this.title});
}

List<HomeCardData> homeData = [
  HomeCardData(imageUrl: 'assets/images/science.jpg', title: 'Science'),
  HomeCardData(imageUrl: 'assets/images/commerce.png', title: 'Commerce'),
  HomeCardData(imageUrl: 'assets/images/arts.jpg', title: 'Arts'),
];
