# SportSpot 🏃

Aplikacja do organizowania lokalnych aktywności sportowych. Pozwala przeglądać aktywności na mapie, dołączać do nich oraz dodawać własne.

## Stack

| Obszar           | Technologia                  |
| ---------------- | ---------------------------- |
| Framework        | Flutter 3.41.9 (FVM)         |
| State management | BLoC                         |
| DI               | GetIt + Injectable           |
| Nawigacja        | auto_route                   |
| Baza lokalna     | Drift (SQLite)               |
| Sieć             | Retrofit + Dio               |
| Modele           | Freezed + json_serializable  |
| Mapowanie        | auto_mappr                   |
| Mapa             | flutter_map (OpenStreetMap)  |
| Testy            | bloc_test, mocktail, mockito |
| CI/CD            | GitHub Actions               |

## Architektura

Projekt stosuje **Clean Architecture** z podziałem na trzy warstwy w obrębie feature'ów. Zależności idą tylko do wewnątrz: presentation → domain ← data.

```
lib/
├── core/
│ ├── di/ # GetIt, Injectable, Mappr
│ ├── network/ # Dio (base URL)
│ └── router/ # auto_route
└── features/
└── activities/
├── domain/
│ ├── entities/
│ ├── repositories/
│ └── usecases/
├── data/
│ ├── models/
│ ├── datasources/
│ └── repositories/
└── presentation/
├── bloc/
└── pages/
```

## Przepływ danych

Repozytorium stosuje strategię **offline-first** — przy błędzie sieci zwraca dane z lokalnego cache (Drift/SQLite).
API JSON → ActivityModel → (auto_mappr) → Activity → BLoC → UI
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

Testy pokrywają warstwy: use case'y (Mocktail), repozytorium (Mockito), BLoC (bloc_test).
