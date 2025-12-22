class UrlsModel {
  final String email;
  final String resumePdf;
  final String linkedInProfile;
  final String githubProfile;
  final String flashLearnPlaylist;
  final String piiRepository;

  const UrlsModel({
    required this.email,
    required this.resumePdf,
    required this.linkedInProfile,
    required this.githubProfile,
    required this.flashLearnPlaylist,
    required this.piiRepository,
  });

  factory UrlsModel.fromJson(Map<String, dynamic> json) {
    return UrlsModel(
      email: json['email'],
      resumePdf: json['resume_pdf'],
      linkedInProfile: json['linked_in_profile'],
      githubProfile: json['github_profile'],
      flashLearnPlaylist: json['flash_learn_playlist'],
      piiRepository: json['pii_repository'],
    );
  }
}
