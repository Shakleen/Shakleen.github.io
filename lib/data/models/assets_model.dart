class AssetsModel {
  final String gmailLogo;
  final String linkedinLogo;
  final String githubLogo;

  const AssetsModel({
    required this.gmailLogo,
    required this.linkedinLogo,
    required this.githubLogo,
  });

  factory AssetsModel.fromJson(Map<String, dynamic> json) {
    return AssetsModel(
      gmailLogo: json['gmail_logo'],
      linkedinLogo: json['linkedin_logo'],
      githubLogo: json['github_logo'],
    );
  }
}
