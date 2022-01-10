class CompanyModel {
  final String name;
  final String cost;
  final String image;
  final String location;

  CompanyModel(
      {required this.name,
      required this.cost,
      required this.image,
      required this.location});
}

List<CompanyModel> companyModels = [
  CompanyModel(
    name: 'GOOGLE',
    cost: '\$4500',
    image: 'assets/images/google.jpg',
    location: 'California',
  ),
  CompanyModel(
      name: 'AMAZON',
      cost: '\$5000',
      image: 'assets/images/amazon.jpg',
      location: 'San Francisco'),
  CompanyModel(
    name: 'FACEBOOK',
    cost: '\$5000',
    image: 'assets/images/fb.jpg',
    location: 'San Francisco',
  ),
];
