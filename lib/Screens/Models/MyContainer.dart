class MyContainerModel {
  String title;
  String subtitle;
  String image;
  MyContainerModel(
      {required this.title, required this.subtitle, required this.image});
}

List<MyContainerModel> myContainerModel = [
  MyContainerModel(
      title: "Pro Drone Corp",
      subtitle: "London,UK",
      image: "assets/drone.png"),
  MyContainerModel(
      title: "Pro Drone Corp",
      subtitle: "London,UK",
      image: "assets/drone.png"),
  MyContainerModel(
      title: "Pro Drone Corp",
      subtitle: "London,UK",
      image: "assets/drone.png"),
];
