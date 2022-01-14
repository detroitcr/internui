class CollegeModel {
  final String name;
  final String image;
  final String description;
  final String cost;
  final String location;

  CollegeModel({
    required this.name,
    required this.image,
    required this.cost,
    required this.location,
    required this.description,
  });
}

List<CollegeModel> collegeData = [
  CollegeModel(
    name: 'MIT',
    image: 'assets/images/college.jpg',
    cost: '\$800',
    location: 'Cambridge',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  ),
  CollegeModel(
    name: 'HARVARD',
    image: 'assets/images/college.jpg',
    cost: '\$900',
    location: 'Cambridge',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  ),
  CollegeModel(
    name: 'CALTECH',
    image: 'assets/images/college.jpg',
    cost: '\$700',
    location: 'Pasadenia',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  ),
];
