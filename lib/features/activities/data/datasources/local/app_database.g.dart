// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $ActivityTableTable extends ActivityTable
    with TableInfo<$ActivityTableTable, ActivityTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ActivityTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sportMeta = const VerificationMeta('sport');
  @override
  late final GeneratedColumn<String> sport = GeneratedColumn<String>(
    'sport',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _latitudeMeta = const VerificationMeta(
    'latitude',
  );
  @override
  late final GeneratedColumn<double> latitude = GeneratedColumn<double>(
    'latitude',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _longitudeMeta = const VerificationMeta(
    'longitude',
  );
  @override
  late final GeneratedColumn<double> longitude = GeneratedColumn<double>(
    'longitude',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _scheduledAtMeta = const VerificationMeta(
    'scheduledAt',
  );
  @override
  late final GeneratedColumn<int> scheduledAt = GeneratedColumn<int>(
    'scheduled_at',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _maxParticipantsMeta = const VerificationMeta(
    'maxParticipants',
  );
  @override
  late final GeneratedColumn<int> maxParticipants = GeneratedColumn<int>(
    'max_participants',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _currentParticipantsMeta =
      const VerificationMeta('currentParticipants');
  @override
  late final GeneratedColumn<int> currentParticipants = GeneratedColumn<int>(
    'current_participants',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _organizerIdMeta = const VerificationMeta(
    'organizerId',
  );
  @override
  late final GeneratedColumn<String> organizerId = GeneratedColumn<String>(
    'organizer_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    title,
    sport,
    latitude,
    longitude,
    scheduledAt,
    maxParticipants,
    currentParticipants,
    organizerId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'activity_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<ActivityTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('sport')) {
      context.handle(
        _sportMeta,
        sport.isAcceptableOrUnknown(data['sport']!, _sportMeta),
      );
    } else if (isInserting) {
      context.missing(_sportMeta);
    }
    if (data.containsKey('latitude')) {
      context.handle(
        _latitudeMeta,
        latitude.isAcceptableOrUnknown(data['latitude']!, _latitudeMeta),
      );
    } else if (isInserting) {
      context.missing(_latitudeMeta);
    }
    if (data.containsKey('longitude')) {
      context.handle(
        _longitudeMeta,
        longitude.isAcceptableOrUnknown(data['longitude']!, _longitudeMeta),
      );
    } else if (isInserting) {
      context.missing(_longitudeMeta);
    }
    if (data.containsKey('scheduled_at')) {
      context.handle(
        _scheduledAtMeta,
        scheduledAt.isAcceptableOrUnknown(
          data['scheduled_at']!,
          _scheduledAtMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_scheduledAtMeta);
    }
    if (data.containsKey('max_participants')) {
      context.handle(
        _maxParticipantsMeta,
        maxParticipants.isAcceptableOrUnknown(
          data['max_participants']!,
          _maxParticipantsMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_maxParticipantsMeta);
    }
    if (data.containsKey('current_participants')) {
      context.handle(
        _currentParticipantsMeta,
        currentParticipants.isAcceptableOrUnknown(
          data['current_participants']!,
          _currentParticipantsMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_currentParticipantsMeta);
    }
    if (data.containsKey('organizer_id')) {
      context.handle(
        _organizerIdMeta,
        organizerId.isAcceptableOrUnknown(
          data['organizer_id']!,
          _organizerIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_organizerIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ActivityTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ActivityTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      sport: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}sport'],
      )!,
      latitude: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}latitude'],
      )!,
      longitude: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}longitude'],
      )!,
      scheduledAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}scheduled_at'],
      )!,
      maxParticipants: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}max_participants'],
      )!,
      currentParticipants: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}current_participants'],
      )!,
      organizerId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}organizer_id'],
      )!,
    );
  }

  @override
  $ActivityTableTable createAlias(String alias) {
    return $ActivityTableTable(attachedDatabase, alias);
  }
}

class ActivityTableData extends DataClass
    implements Insertable<ActivityTableData> {
  final String id;
  final String title;
  final String sport;
  final double latitude;
  final double longitude;
  final int scheduledAt;
  final int maxParticipants;
  final int currentParticipants;
  final String organizerId;
  const ActivityTableData({
    required this.id,
    required this.title,
    required this.sport,
    required this.latitude,
    required this.longitude,
    required this.scheduledAt,
    required this.maxParticipants,
    required this.currentParticipants,
    required this.organizerId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['title'] = Variable<String>(title);
    map['sport'] = Variable<String>(sport);
    map['latitude'] = Variable<double>(latitude);
    map['longitude'] = Variable<double>(longitude);
    map['scheduled_at'] = Variable<int>(scheduledAt);
    map['max_participants'] = Variable<int>(maxParticipants);
    map['current_participants'] = Variable<int>(currentParticipants);
    map['organizer_id'] = Variable<String>(organizerId);
    return map;
  }

  ActivityTableCompanion toCompanion(bool nullToAbsent) {
    return ActivityTableCompanion(
      id: Value(id),
      title: Value(title),
      sport: Value(sport),
      latitude: Value(latitude),
      longitude: Value(longitude),
      scheduledAt: Value(scheduledAt),
      maxParticipants: Value(maxParticipants),
      currentParticipants: Value(currentParticipants),
      organizerId: Value(organizerId),
    );
  }

  factory ActivityTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ActivityTableData(
      id: serializer.fromJson<String>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      sport: serializer.fromJson<String>(json['sport']),
      latitude: serializer.fromJson<double>(json['latitude']),
      longitude: serializer.fromJson<double>(json['longitude']),
      scheduledAt: serializer.fromJson<int>(json['scheduledAt']),
      maxParticipants: serializer.fromJson<int>(json['maxParticipants']),
      currentParticipants: serializer.fromJson<int>(
        json['currentParticipants'],
      ),
      organizerId: serializer.fromJson<String>(json['organizerId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'title': serializer.toJson<String>(title),
      'sport': serializer.toJson<String>(sport),
      'latitude': serializer.toJson<double>(latitude),
      'longitude': serializer.toJson<double>(longitude),
      'scheduledAt': serializer.toJson<int>(scheduledAt),
      'maxParticipants': serializer.toJson<int>(maxParticipants),
      'currentParticipants': serializer.toJson<int>(currentParticipants),
      'organizerId': serializer.toJson<String>(organizerId),
    };
  }

  ActivityTableData copyWith({
    String? id,
    String? title,
    String? sport,
    double? latitude,
    double? longitude,
    int? scheduledAt,
    int? maxParticipants,
    int? currentParticipants,
    String? organizerId,
  }) => ActivityTableData(
    id: id ?? this.id,
    title: title ?? this.title,
    sport: sport ?? this.sport,
    latitude: latitude ?? this.latitude,
    longitude: longitude ?? this.longitude,
    scheduledAt: scheduledAt ?? this.scheduledAt,
    maxParticipants: maxParticipants ?? this.maxParticipants,
    currentParticipants: currentParticipants ?? this.currentParticipants,
    organizerId: organizerId ?? this.organizerId,
  );
  ActivityTableData copyWithCompanion(ActivityTableCompanion data) {
    return ActivityTableData(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      sport: data.sport.present ? data.sport.value : this.sport,
      latitude: data.latitude.present ? data.latitude.value : this.latitude,
      longitude: data.longitude.present ? data.longitude.value : this.longitude,
      scheduledAt: data.scheduledAt.present
          ? data.scheduledAt.value
          : this.scheduledAt,
      maxParticipants: data.maxParticipants.present
          ? data.maxParticipants.value
          : this.maxParticipants,
      currentParticipants: data.currentParticipants.present
          ? data.currentParticipants.value
          : this.currentParticipants,
      organizerId: data.organizerId.present
          ? data.organizerId.value
          : this.organizerId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ActivityTableData(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('sport: $sport, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('scheduledAt: $scheduledAt, ')
          ..write('maxParticipants: $maxParticipants, ')
          ..write('currentParticipants: $currentParticipants, ')
          ..write('organizerId: $organizerId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    title,
    sport,
    latitude,
    longitude,
    scheduledAt,
    maxParticipants,
    currentParticipants,
    organizerId,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ActivityTableData &&
          other.id == this.id &&
          other.title == this.title &&
          other.sport == this.sport &&
          other.latitude == this.latitude &&
          other.longitude == this.longitude &&
          other.scheduledAt == this.scheduledAt &&
          other.maxParticipants == this.maxParticipants &&
          other.currentParticipants == this.currentParticipants &&
          other.organizerId == this.organizerId);
}

class ActivityTableCompanion extends UpdateCompanion<ActivityTableData> {
  final Value<String> id;
  final Value<String> title;
  final Value<String> sport;
  final Value<double> latitude;
  final Value<double> longitude;
  final Value<int> scheduledAt;
  final Value<int> maxParticipants;
  final Value<int> currentParticipants;
  final Value<String> organizerId;
  final Value<int> rowid;
  const ActivityTableCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.sport = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.scheduledAt = const Value.absent(),
    this.maxParticipants = const Value.absent(),
    this.currentParticipants = const Value.absent(),
    this.organizerId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ActivityTableCompanion.insert({
    required String id,
    required String title,
    required String sport,
    required double latitude,
    required double longitude,
    required int scheduledAt,
    required int maxParticipants,
    required int currentParticipants,
    required String organizerId,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       title = Value(title),
       sport = Value(sport),
       latitude = Value(latitude),
       longitude = Value(longitude),
       scheduledAt = Value(scheduledAt),
       maxParticipants = Value(maxParticipants),
       currentParticipants = Value(currentParticipants),
       organizerId = Value(organizerId);
  static Insertable<ActivityTableData> custom({
    Expression<String>? id,
    Expression<String>? title,
    Expression<String>? sport,
    Expression<double>? latitude,
    Expression<double>? longitude,
    Expression<int>? scheduledAt,
    Expression<int>? maxParticipants,
    Expression<int>? currentParticipants,
    Expression<String>? organizerId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (sport != null) 'sport': sport,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (scheduledAt != null) 'scheduled_at': scheduledAt,
      if (maxParticipants != null) 'max_participants': maxParticipants,
      if (currentParticipants != null)
        'current_participants': currentParticipants,
      if (organizerId != null) 'organizer_id': organizerId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ActivityTableCompanion copyWith({
    Value<String>? id,
    Value<String>? title,
    Value<String>? sport,
    Value<double>? latitude,
    Value<double>? longitude,
    Value<int>? scheduledAt,
    Value<int>? maxParticipants,
    Value<int>? currentParticipants,
    Value<String>? organizerId,
    Value<int>? rowid,
  }) {
    return ActivityTableCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      sport: sport ?? this.sport,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      scheduledAt: scheduledAt ?? this.scheduledAt,
      maxParticipants: maxParticipants ?? this.maxParticipants,
      currentParticipants: currentParticipants ?? this.currentParticipants,
      organizerId: organizerId ?? this.organizerId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (sport.present) {
      map['sport'] = Variable<String>(sport.value);
    }
    if (latitude.present) {
      map['latitude'] = Variable<double>(latitude.value);
    }
    if (longitude.present) {
      map['longitude'] = Variable<double>(longitude.value);
    }
    if (scheduledAt.present) {
      map['scheduled_at'] = Variable<int>(scheduledAt.value);
    }
    if (maxParticipants.present) {
      map['max_participants'] = Variable<int>(maxParticipants.value);
    }
    if (currentParticipants.present) {
      map['current_participants'] = Variable<int>(currentParticipants.value);
    }
    if (organizerId.present) {
      map['organizer_id'] = Variable<String>(organizerId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ActivityTableCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('sport: $sport, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('scheduledAt: $scheduledAt, ')
          ..write('maxParticipants: $maxParticipants, ')
          ..write('currentParticipants: $currentParticipants, ')
          ..write('organizerId: $organizerId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ActivityTableTable activityTable = $ActivityTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [activityTable];
}

typedef $$ActivityTableTableCreateCompanionBuilder =
    ActivityTableCompanion Function({
      required String id,
      required String title,
      required String sport,
      required double latitude,
      required double longitude,
      required int scheduledAt,
      required int maxParticipants,
      required int currentParticipants,
      required String organizerId,
      Value<int> rowid,
    });
typedef $$ActivityTableTableUpdateCompanionBuilder =
    ActivityTableCompanion Function({
      Value<String> id,
      Value<String> title,
      Value<String> sport,
      Value<double> latitude,
      Value<double> longitude,
      Value<int> scheduledAt,
      Value<int> maxParticipants,
      Value<int> currentParticipants,
      Value<String> organizerId,
      Value<int> rowid,
    });

class $$ActivityTableTableFilterComposer
    extends Composer<_$AppDatabase, $ActivityTableTable> {
  $$ActivityTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get sport => $composableBuilder(
    column: $table.sport,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get latitude => $composableBuilder(
    column: $table.latitude,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get longitude => $composableBuilder(
    column: $table.longitude,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get scheduledAt => $composableBuilder(
    column: $table.scheduledAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get maxParticipants => $composableBuilder(
    column: $table.maxParticipants,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get currentParticipants => $composableBuilder(
    column: $table.currentParticipants,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get organizerId => $composableBuilder(
    column: $table.organizerId,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ActivityTableTableOrderingComposer
    extends Composer<_$AppDatabase, $ActivityTableTable> {
  $$ActivityTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sport => $composableBuilder(
    column: $table.sport,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get latitude => $composableBuilder(
    column: $table.latitude,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get longitude => $composableBuilder(
    column: $table.longitude,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get scheduledAt => $composableBuilder(
    column: $table.scheduledAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get maxParticipants => $composableBuilder(
    column: $table.maxParticipants,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get currentParticipants => $composableBuilder(
    column: $table.currentParticipants,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get organizerId => $composableBuilder(
    column: $table.organizerId,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ActivityTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $ActivityTableTable> {
  $$ActivityTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get sport =>
      $composableBuilder(column: $table.sport, builder: (column) => column);

  GeneratedColumn<double> get latitude =>
      $composableBuilder(column: $table.latitude, builder: (column) => column);

  GeneratedColumn<double> get longitude =>
      $composableBuilder(column: $table.longitude, builder: (column) => column);

  GeneratedColumn<int> get scheduledAt => $composableBuilder(
    column: $table.scheduledAt,
    builder: (column) => column,
  );

  GeneratedColumn<int> get maxParticipants => $composableBuilder(
    column: $table.maxParticipants,
    builder: (column) => column,
  );

  GeneratedColumn<int> get currentParticipants => $composableBuilder(
    column: $table.currentParticipants,
    builder: (column) => column,
  );

  GeneratedColumn<String> get organizerId => $composableBuilder(
    column: $table.organizerId,
    builder: (column) => column,
  );
}

class $$ActivityTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ActivityTableTable,
          ActivityTableData,
          $$ActivityTableTableFilterComposer,
          $$ActivityTableTableOrderingComposer,
          $$ActivityTableTableAnnotationComposer,
          $$ActivityTableTableCreateCompanionBuilder,
          $$ActivityTableTableUpdateCompanionBuilder,
          (
            ActivityTableData,
            BaseReferences<
              _$AppDatabase,
              $ActivityTableTable,
              ActivityTableData
            >,
          ),
          ActivityTableData,
          PrefetchHooks Function()
        > {
  $$ActivityTableTableTableManager(_$AppDatabase db, $ActivityTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ActivityTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ActivityTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ActivityTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> sport = const Value.absent(),
                Value<double> latitude = const Value.absent(),
                Value<double> longitude = const Value.absent(),
                Value<int> scheduledAt = const Value.absent(),
                Value<int> maxParticipants = const Value.absent(),
                Value<int> currentParticipants = const Value.absent(),
                Value<String> organizerId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ActivityTableCompanion(
                id: id,
                title: title,
                sport: sport,
                latitude: latitude,
                longitude: longitude,
                scheduledAt: scheduledAt,
                maxParticipants: maxParticipants,
                currentParticipants: currentParticipants,
                organizerId: organizerId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String title,
                required String sport,
                required double latitude,
                required double longitude,
                required int scheduledAt,
                required int maxParticipants,
                required int currentParticipants,
                required String organizerId,
                Value<int> rowid = const Value.absent(),
              }) => ActivityTableCompanion.insert(
                id: id,
                title: title,
                sport: sport,
                latitude: latitude,
                longitude: longitude,
                scheduledAt: scheduledAt,
                maxParticipants: maxParticipants,
                currentParticipants: currentParticipants,
                organizerId: organizerId,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ActivityTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ActivityTableTable,
      ActivityTableData,
      $$ActivityTableTableFilterComposer,
      $$ActivityTableTableOrderingComposer,
      $$ActivityTableTableAnnotationComposer,
      $$ActivityTableTableCreateCompanionBuilder,
      $$ActivityTableTableUpdateCompanionBuilder,
      (
        ActivityTableData,
        BaseReferences<_$AppDatabase, $ActivityTableTable, ActivityTableData>,
      ),
      ActivityTableData,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ActivityTableTableTableManager get activityTable =>
      $$ActivityTableTableTableManager(_db, _db.activityTable);
}
