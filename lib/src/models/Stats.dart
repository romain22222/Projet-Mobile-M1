class StatsJson {
  StatsJson();
}

class Stats {
  toJson() => StatsJson();
  Stats();
  Stats.fromJson(StatsJson json);
  // To fill
}
