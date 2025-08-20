import 'package:flutter_riverpod/flutter_riverpod.dart';

/// App-level dietary filters.
/// Enum names are lowerCamelCase for consistency.
enum Filter {
  glutenFree,
  lactoseFree,
  vegetarian,
  vegan,
}

/// State for all filters stored as a map from Filter -> bool
class FilterNotifier extends StateNotifier<Map<Filter, bool>> {
  FilterNotifier()
      : super({
          Filter.glutenFree: false,
          Filter.lactoseFree: false,
          Filter.vegetarian: false,
          Filter.vegan: false,
        });

  /// Toggle a single filter on/off
  void toggle(Filter filter, bool isEnabled) {
    state = {
      ...state,
      filter: isEnabled,
    };
  }

  /// Set many filters at once (e.g., when loading saved settings or applying from UI)
  void setAll(Map<Filter, bool> newValues) {
    state = {
      ...state,
      ...newValues,
    };
  }
}

/// Public provider used across the app.
/// Notice the name is `filtersProvider` (with **s**)
final filtersProvider =
    StateNotifierProvider<FilterNotifier, Map<Filter, bool>>((ref) {
  return FilterNotifier();
});
