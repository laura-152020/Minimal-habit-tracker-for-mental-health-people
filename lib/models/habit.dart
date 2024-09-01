import 'package:isar/isar.dart';

// run cmd to generate file: dart run build_runner build
part 'habit.g.dart';

@Collection()
class Habit {
  // Habit id
  Id id = Isar.autoIncrement;

  // Habit name
  late String name;

  // Completed days
  List<DateTime> completeDays = [
    // DateTime(year, month, day),
    // DateTime(2024, 1, 1),
    // DateTime(2024, 1, 2),
  ];
}
