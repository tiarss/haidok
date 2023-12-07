class KeyValueData {
  String title;
  int value;

  KeyValueData({required this.title, required this.value});
}

class ProfileData {
  String name;
  String imgProfile;
  List<KeyValueData> history;
  List<KeyValueData> body;
  // List<String> imageUrls;

  ProfileData({
    required this.name,
    required this.imgProfile,
    required this.history,
    required this.body,
    // required this.imageUrls,
  });
}

var profileDataList = [
  ProfileData(
      name: "Bahtiar Subrata",
      imgProfile: 'assets/images/profile.png',
      history: [
        KeyValueData(title: "Konsultasi", value: 2)
      ],
      body: [
        KeyValueData(title: "Berat Badan", value: 50),
        KeyValueData(title: "Tinggi Badan", value: 163),
        KeyValueData(title: "Usia", value: 24),
      ])
];
