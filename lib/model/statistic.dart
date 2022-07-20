class Statistic{
  final String date;
  final String groupName;
  final String correctNumber;
  final String wrongNumber;
  final String passingTime;

  Statistic({required this.date,required this.groupName,required this.passingTime,required this.correctNumber, required this.wrongNumber});

  @override
  String toString() {
    return 'Lesson{name: $date, letterValue: $groupName, creditValue: $passingTime, creditValue: $correctNumber, creditValue: $wrongNumber}';
  }
}