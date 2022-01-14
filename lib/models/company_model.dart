class CompanyModel {
  final String name;
  final String cost;
  final String image;
  final String location;
  final String description;

  CompanyModel({
    required this.name,
    required this.cost,
    required this.image,
    required this.location,
    required this.description,
  });
}

List<CompanyModel> companyModels = [
  CompanyModel(
    name: 'GOOGLE',
    cost: '\$4500',
    image: 'assets/images/google.jpg',
    location: 'California',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  ),
  CompanyModel(
    name: 'AMAZON',
    cost: '\$5000',
    image: 'assets/images/amazon.jpg',
    location: 'San Francisco',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  ),
  CompanyModel(
    name: 'FACEBOOK',
    cost: '\$5000',
    image: 'assets/images/fb.jpg',
    location: 'San Francisco',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  ),
];
