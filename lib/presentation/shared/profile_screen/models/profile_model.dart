/// This class defines the variables used in the [profile_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileModel {
  int? id;
  String? name;
  String? email;
  String? imgPath;
  List<Map<String, dynamic>>? posts;

  ProfileModel({
    this.id,
    this.name,
    this.email,
    this.imgPath,
    this.posts,
  });

  ProfileModel.copyWith(
      {int? id = 0,
      String? name = '',
      String? email = '',
      String? imgPath = '',
      List<Map<String, dynamic>>? posts}) {
    this.id = id;
    this.name = name;
    this.email = email;
    this.imgPath = imgPath;
    this.posts = posts ??
        [
          {'': ''}
        ];
  }
}
