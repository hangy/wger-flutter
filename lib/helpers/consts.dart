/*
 * This file is part of wger Workout Manager <https://github.com/wger-project>.
 * Copyright (C) 2020, 2021 wger Team
 *
 * wger Workout Manager is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// Size for the "smaller" icons, e.g. when they belong to less important items
/// and we don't want to fill the whole screen
const double ICON_SIZE_SMALL = 20;

/// Default wger server during login
const DEFAULT_SERVER_PROD = 'https://wger.de';
const DEFAULT_SERVER_TEST = 'https://wger-master.rge.uber.space/';

// Debug mode Login Data
const TESTSERVER_USER_NAME = 'user';
const TESTSERVER_PASSWORD = 'flutteruser';

/// Default impression for a workout session (neutral)
const DEFAULT_IMPRESSION = 2;

// Weight and repetition units for the workout logs
const REP_UNIT_REPETITIONS_ID = 1;
const REP_UNIT_TILL_FAILURE_ID = 2;

const WEIGHT_UNIT_KG = 1;
const WEIGHT_UNIT_LB = 2;

/// Time to locally cache values such as ingredients, etc
const DAYS_TO_CACHE = 20;

/// Name of the submit button in forms
const SUBMIT_BUTTON_KEY_NAME = 'submit-button';

/// Local Preferences keys
const PREFS_EXERCISES = 'exerciseData';
const PREFS_LAST_UPDATED_MUSCLES = 'lastUpdatedMuscles';
const PREFS_LAST_UPDATED_EQUIPMENT = 'lastUpdatedEquipment';
const PREFS_LAST_UPDATED_CATEGORIES = 'lastUpdatedCategories';
const PREFS_LAST_UPDATED_LANGUAGES = 'lastUpdatedLanguages';
const PREFS_INGREDIENTS = 'ingredientData';
const PREFS_WORKOUT_UNITS = 'workoutUnits';
const PREFS_USER = 'userData';
const PREFS_USER_DARK_THEME = 'userDarkMode';
const PREFS_LAST_SERVER = 'lastServer';

const DEFAULT_ANIMATION_DURATION = Duration(milliseconds: 200);
const DEFAULT_ANIMATION_CURVE = Curves.bounceIn;

/// Dateformat used when using a date as a key in a dictionary. Using either the
/// regular date object or date.toLocal() can cause problems, depending on the
/// system's settings. Using a string is safer.
//ignore: non_constant_identifier_names
final DateFormatLists = DateFormat('yyyy-MM-dd');

/// Available plate weights, used for the plate calculator
const AVAILABLE_PLATES = [1.25, 2.5, 5, 10, 15];

/// Weight of the bar, used in the plate calculator
const BAR_WEIGHT = 20;

/// ID of the equipment entry for barbell
const ID_EQUIPMENT_BARBELL = 1;

/// kcal per gram of protein (approx)
const ENERGY_PROTEIN = 4;

/// kcal per gram of carbohydrates (approx)
const ENERGY_CARBOHYDRATES = 4;

/// kcal per gram of fat (approx)
const ENERGY_FAT = 9;

/// Language ID for English (fallback)
const LANGUAGE_SHORT_ENGLISH = 'en';

/// IDs of the different image art styles
///
/// Values taken from exercises/models/image.py
enum EXERCISE_IMAGE_ART_STYLE {
  // ignore: unused_field
  _, // 0 is not used
  LINE_ART,
  THREE_D,
  LOW_POLY,
  PHOTO,
  OTHER,
}

/// Dummy ID for pseudo meals
const PSEUDO_MEAL_ID = -1;

/// Colors used for muscles
const COLOR_MAIN_MUSCLES = Colors.red;
const COLOR_SECONDARY_MUSCLES = Colors.orange;

// Min account age to contribute exercises. Needs to be kept in sync with
// the value on the backend
const MIN_ACCOUNT_AGE = 14;

/// Different project URLs
const GITHUB_PROJECT_URL = 'https://github.com/wger-project';
const GITHUB_REPO_URL = '$GITHUB_PROJECT_URL/flutter';
const GITHUB_ISSUES_URL = '$GITHUB_REPO_URL/issues/new/choose';
const GITHUB_ISSUES_BUG_URL = '$GITHUB_REPO_URL/issues/new?template=1_bug.yml';
const GITHUB_SPONSORS_URL = 'https://github.com/sponsors/wger-project';
const DISCORD_URL = 'https://discord.gg/rPWFv6W';
const MASTODON_URL = 'https://fosstodon.org/@wger';
const WEBLATE_URL = 'https://hosted.weblate.org/engage/wger';
const BUY_ME_A_COFFEE_URL = 'https://buymeacoffee.com/wger';
const LIBERAPAY_URL = 'https://liberapay.com/wger';

/// Factor to multiply / divide in the charts when converting dates to milliseconds
/// from epoch since fl_charts does not support real time series charts and using
/// the milliseconds themselves can cause the application to crash since it runs
/// out of memory...
const double CHART_MILLISECOND_FACTOR = 100000.0;

enum WeightUnitEnum { kg, lb }

/// TextInputType for decimal numbers
const textInputTypeDecimal = TextInputType.numberWithOptions(decimal: true);
