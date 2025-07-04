/*
 * This file is part of wger Workout Manager <https://github.com/wger-project>.
 * Copyright (C) 2020, 2021 wger Team
 *
 * wger Workout Manager is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * wger Workout Manager is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import 'package:flutter/material.dart';
import 'package:wger/l10n/generated/app_localizations.dart';
import 'package:wger/models/nutrition/nutritional_plan.dart';
import 'package:wger/screens/nutritional_plan_screen.dart';
import 'package:wger/widgets/nutrition/meal.dart';

class LogMealsScreen extends StatefulWidget {
  const LogMealsScreen();

  static const routeName = '/log-meals';

  @override
  State<LogMealsScreen> createState() => _LogMealsScreenState();
}

class _LogMealsScreenState extends State<LogMealsScreen> {
  double portionPct = 100;

  @override
  Widget build(BuildContext context) {
    final nutritionalPlan = ModalRoute.of(context)!.settings.arguments as NutritionalPlan;

    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).selectMealToLog),
      ),
      body: Column(
        children: [
          // Meals list or empty state
          Expanded(
            child: nutritionalPlan.meals.isEmpty
                ? Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        AppLocalizations.of(context).yourCurrentNutritionPlanHasNoMealsDefinedYet,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                  )
                : ListView.builder(
                    itemCount: nutritionalPlan.meals.length,
                    itemBuilder: (context, index) => MealWidget(
                      nutritionalPlan.meals[index],
                      nutritionalPlan.dedupMealItems,
                      true,
                      true,
                    ),
                  ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 32.0),
            child: Column(
              children: [
                Text(
                  AppLocalizations.of(context).toAddMealsToThePlanGoToNutritionalPlanDetails,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 8),
                TextButton(
                  child: Text(AppLocalizations.of(context).goToDetailPage),
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed(
                      NutritionalPlanScreen.routeName,
                      arguments: nutritionalPlan,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
