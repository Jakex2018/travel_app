class CityDetails {
  final String cityName;
  final List<String> images;

  CityDetails(this.cityName, this.images);
}
final Map<String, CityDetails> cityDetailsMap = {
  'New York': CityDetails('New York', [
    'assets/images/nuevayork.jpg',
    'assets/images/nuevayork.jpg',
    'assets/images/nuevayork.jpg'
    
  ]),
  'Seattle': CityDetails('Seattle', [
    'assets/images/seattle.jpg',
    'assets/images/seattle.jpg',
    'assets/images/seattle.jpg',
  ]),
  'Miami': CityDetails('Miami', [
    'assets/images/miami.jpg',
    'assets/images/miami.jpg',
    'assets/images/miami.jpg',
  ]),
  'Los Angeles': CityDetails('Los Angeles', [
    'assets/images/losAngeles.jpg',
    'assets/images/losAngeles.jpg',
    'assets/images/losAngeles.jpg',
  ]),
};
