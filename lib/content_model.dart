class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent({required this.image,required this.title,required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
    title: 'Grow your skill',
    image: 'lib/assetc/images/img.png',
    discription: "So you already have loads of them! You use life skills every single day, in school, in your relationships, in the things you love to do, and in the things you don’t!"
  ),
  UnbordingContent(
    title: 'Fast Delevery',
    image: 'lib/assetc/images/img1.png',
    discription: "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "
    "industry's standard dummy text ever since the 1500s, "
    "when an unknown printer took a galley of type and scrambled it "
  ),
  UnbordingContent(
    title: 'Reward surprises',
    image: 'lib/assetc/images/img2.png',
    discription: "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "
    "industry's standard dummy text ever since the 1500s, "
    "when an unknown printer took a galley of type and scrambled it "
  ),
];