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
