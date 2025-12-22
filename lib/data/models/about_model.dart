class AboutModel {
  final String profilePictureLight;
  final String profilePictureDark;
  final String description;
  final Map<String, String> skills;

  const AboutModel({
    required this.profilePictureLight,
    required this.profilePictureDark,
    required this.description,
    required this.skills,
  });

  factory AboutModel.fromJson(Map<String, dynamic> json) {
    return AboutModel(
      profilePictureLight: json['profile-picture-light'],
      profilePictureDark: json['profile-picture-dark'],
      description: json['description'],
      skills: Map<String, String>.from(json['skills']),
    );
  }
}
