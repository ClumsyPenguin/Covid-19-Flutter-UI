class Covid {
  final String country;
  final int confirmed;
  final int deaths;
  final int recovered;
  final int active;
  final String lastUpdatedFromSource;

  Covid({
    this.country,
    this.active,
    this.confirmed,
    this.deaths,
    this.recovered,
    this.lastUpdatedFromSource,
  });

  factory Covid.fromJson(Map<String, dynamic> json) {
    return Covid(
        country: json['Country'],
        active: json['Active'],
        confirmed: json['Confirmed'],
        recovered: json['Recovered'],
        deaths: json['Deaths'],
        lastUpdatedFromSource: json['lastUpdatedAtSource']);
  }
}
