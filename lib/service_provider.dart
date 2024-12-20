class ServiceProvider {
  final String name;
  final String profession;
  final String description;
  final String phone;
  final bool isIndividual;

  ServiceProvider({
    required this.name,
    required this.profession,
    required this.description,
    required this.phone,
    required this.isIndividual,
  });

  String get type {
    if (isIndividual) {
      return 'Individual';
    } else {
      return 'Company';
    }
  }

  @override
  String toString() {
    return '''
$name
$profession
$phone
$description
''';
  }
}

final List<ServiceProvider> providers = [
  ServiceProvider(
    name: 'AAA AAA',
    profession: 'Plumber',
    description: 'Expert in fixing leaks and pipe installations.',
    phone: '071111111',
    isIndividual: true,
  ),
  ServiceProvider(
    name: 'BBB BBB',
    profession: 'Electrician',
    description: 'Specialist in wiring and electrical systems.',
    phone: '071222222',
    isIndividual: false,
  ),
  ServiceProvider(
    name: 'CCC CCC',
    profession: 'Carpenter',
    description: 'Woodwork and furniture building expert.',
    phone: '071333333',
    isIndividual: true,
  ),
  ServiceProvider(
    name: 'DDD DDD',
    profession: 'Electrician',
    description: 'Reliable electrical system repairs.',
    phone: '071444444',
    isIndividual: false,
  ),
  ServiceProvider(
    name: 'EEE EEE',
    profession: 'Plumber',
    description: 'Best plumber service in Nabatieh.',
    phone: '071555555',
    isIndividual: true,
  ),
  ServiceProvider(
    name: 'FFF FFF',
    profession: 'Carpenter',
    description: 'Affordable and skilled carpenter.',
    phone: '071666666',
    isIndividual: false,
  ),
  ServiceProvider(
    name: 'GGG GGG',
    profession: 'Plumber',
    description: 'Experienced in modern plumbing systems.',
    phone: '071777777',
    isIndividual: true,
  ),
  ServiceProvider(
    name: 'HHH HHH',
    profession: 'Electrician',
    description: 'Expert in smart home electricals.',
    phone: '071888888',
    isIndividual: false,
  ),
  ServiceProvider(
    name: 'III III',
    profession: 'Carpenter',
    description: 'Custom furniture maker.',
    phone: '071999999',
    isIndividual: true,
  ),
  ServiceProvider(
    name: 'JJJ JJJ',
    profession: 'Plumber',
    description: 'Reliable and fast plumbing services.',
    phone: '072000000',
    isIndividual: false,
  ),
];
