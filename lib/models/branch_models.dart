class CollegeModel {
  final String name;
  final String image;

  final String livingCost;
  final String location;

  CollegeModel(
      {required this.name,
        required this.image,
        required this.livingCost,
        required this.location});
}

List<CollegeModel> collegeData = [
  CollegeModel(
    name: 'MIT',
    image: 'assets/images/college.jpg',
    livingCost: '\$800',
    location: 'Cambridge',
  ),
  CollegeModel(
    name: 'HARVARD',
    image: 'assets/images/college.jpg',
    livingCost: '\$900',
    location: 'Cambridge',
  ),
  CollegeModel(
    name: 'CALTECH',
    image: 'assets/images/college.jpg',
    livingCost: '\$700',
    location: 'Pasadenia',
  ),
];

class CompanyModel {
  final String name;
  final String salary;
  final String image;
  final String location;

  CompanyModel(
      {required this.name,
        required this.salary,
        required this.image,
        required this.location});
}

List<CompanyModel> companyModels = [
  CompanyModel(
    name: 'GOOGLE',
    salary: '\$4500',
    image: 'assets/images/google.jpg',
    location: 'California',
  ),
  CompanyModel(
      name: 'AMAZON',
      salary: '\$5000',
      image: 'assets/images/amazon.jpg',
      location: 'San Francisco'),
  CompanyModel(
    name: 'FACEBOOK',
    salary: '\$5000',
    image: 'assets/images/fb.jpg',
    location: 'San Francisco',
  ),
];
