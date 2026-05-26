import 'package:drift/drift.dart';

class ActivityTable extends Table {
  TextColumn get id => text()();
  TextColumn get title => text()();
  TextColumn get sport => text()();
  RealColumn get latitude => real()();
  RealColumn get longitude => real()();
  IntColumn get scheduledAt => integer()();
  IntColumn get maxParticipants => integer()();
  IntColumn get currentParticipants => integer()();
  TextColumn get organizerId => text()();

  @override
  Set<Column> get primaryKey => {id};
}