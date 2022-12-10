class Place {
  String name;
  String image;
  String describtion;

  Place({required this.name, required this.image, required this.describtion});

  static List<Place> places = [
    Place(
        name: " أبراج الكويت",
        image: "assets/images/towers.jpg",
        describtion: "أعظم معالم الكويت"),
    Place(
        name: " برج التحرير",
        image: "assets/images/tower.jpg",
        describtion: " أعلى برج في الكويت"),
    Place(
        name: "المسجد الكبير ",
        image: "assets/images/park.jpg",
        describtion: " أكبر مسجد في الكويت"),
  ];
}
