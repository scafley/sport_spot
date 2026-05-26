# SportSpot 🏃

Aplikacja do organizowania lokalnych aktywności sportowych. Pozwala przeglądać aktywności na mapie, dołączać do nich oraz dodawać własne.

## Stack

- **Flutter** 3.41.9
- **State management:** BLoC
- **DI:** GetIt + Injectable
- **Navigation:** Auto_route
- **Local DB:** Drift (SQLite)
- **Network:** Retrofit + Dio
- **Models:** Freezed + JSON Serializable
- **Mapper:** Auto_Mappr
- **Hooks:** flutter_hooks
- **Map:** flutter_map (OpenStreetMap)
- **Tests:** Mocktail + Mockito + bloc_test
- **CI/CD:** GitHub Actions

## Architektura

Projekt oparty na **Clean Architecture** z podziałem na trzy warstwy:
lib/
├── core/
│ ├── di/ # GetIt + Injectable
│ ├── network/ # Dio module
│ └── router/ # Auto_route
└── features/
└── activities/
├── domain/ # Entities, UseCases, Repository interface
├── data/ # Models, DataSources, Repository impl
└── presentation/ # BLoC, Pages, Widgets

## Przepływ danych

API JSON → ActivityModel → (Auto_Mappr) → Activity → BLoC → UI
SQLite → ActivityTableData → Activity → BLoC → UI

## Uruchomienie

1. Zainstaluj FVM: `dart pub global activate fvm`
2. `fvm use stable`
3. `fvm flutter pub get`
4. Uruchom fake API: `json-server db.json`
5. `fvm flutter run`

## Testy

```bash
fvm flutter test
```
