class UnboradingContent {
  String image;
  String title;
  String description;
  UnboradingContent(
      {required this.image, required this.description, required this.title});
}

List<UnboradingContent> contents = [
  UnboradingContent(
      image: "images/screen1.jpg",
      description:
      "an innovative web application developed by\n  two talented students from IIT Sfax University.\n Serving as a dynamic portfolio platform.",
      title: "OpenToWork"),
  UnboradingContent(
      image: "images/screen2.jpg",
      description: "Ons Hadrich \n and \n Khayreddine Derbali",
      title: "Who are we ? ")
];
