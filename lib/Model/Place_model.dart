class PlaceInfo{
final String location,image,name,desc;


PlaceInfo({
  required this.name,
  required this.image,
  required this.location,
  required this.desc,

});
}

List places=[
  PlaceInfo(name: "Karachi", image: 'images/Karachi.jpg', location: 'pakistan', desc: 'City Of Lights'),
  PlaceInfo(name: 'Lahore', image: 'images/Lahore.jpg', location: 'Pakistan', desc:'Lahore is the city of wonders with a rich history of over a millennium'),
  PlaceInfo(name: 'Islamabad', image: 'images/Islamabad.jpg', location: 'Pakistan', desc: '“City of Islam,” or “City of Peace”')
];