class UrlsModel {
  final String email;
  final String resumePdf;
  final String linkedInProfile;
  final String githubProfile;

  const UrlsModel({
    required this.email,
    required this.resumePdf,
    required this.linkedInProfile,
    required this.githubProfile,
  });

  factory UrlsModel.fromJson(Map<String, dynamic> json) {
    return UrlsModel(
      email: json['email'],
      resumePdf: json['resume_pdf'],
      linkedInProfile: json['linked_in_profile'],
      githubProfile: json['github_profile'],
    );
  }
}
