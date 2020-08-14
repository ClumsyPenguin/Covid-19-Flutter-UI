class Covid {
  final String country;
  final int infected;
  final int deaths;
  final String recovered;
  final int hospitalized;
  final int totalInHospital;
  final int tested;

  Covid(
      {this.country,
      this.infected,
      this.deaths,
      this.recovered,
      this.totalInHospital,
      this.hospitalized,
      this.tested});

  factory Covid.fromJson(Map<String, dynamic> json) {
    return Covid(
        country: json['country'],
        infected: json['infected'],
        deaths: json['deaths'],
        tested: json['tested'],
        hospitalized: json['totalHospitalized'],
        totalInHospital: json['TotalInToHospital'],
        recovered: json['recovered']);
  }
}
