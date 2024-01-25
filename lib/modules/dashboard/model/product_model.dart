class ProductModel {
  String name;
  String time;
  String image;
  String chef;

  ProductModel(this.name, this.time, this.image, this.chef);
}

class RecipeModel {
  String name;
  String time;
  String image;
  String reviewImage;
  String reviewName;

  RecipeModel(
      this.name, this.time, this.image, this.reviewImage, this.reviewName);
}
