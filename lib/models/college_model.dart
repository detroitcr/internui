class CollegeModel {
  final String name;
  final String image;

  final String cost;
  final String location;

  CollegeModel(
      {required this.name,
      required this.image,
      required this.cost,
      required this.location});
}

List<CollegeModel> collegeData = [
  CollegeModel(
    name: 'MIT',
    image: 'assets/images/college.jpg',
    cost: '\$800',
    location: 'Cambridge',
  ),
  CollegeModel(
    name: 'HARVARD',
    image: 'assets/images/college.jpg',
    cost: '\$900',
    location: 'Cambridge',
  ),
  CollegeModel(
    name: 'CALTECH',
    image: 'assets/images/college.jpg',
    cost: '\$700',
    location: 'Pasadenia',
  ),
];

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
