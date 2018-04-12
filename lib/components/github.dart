class GitHubProfile {
  String user;
  String name;
  String email;
  String authToken;

  GitHubProfile(String user, String password) {
    this.user = user;
    this.authToken = "FAKE_TOKEN";
  }
}