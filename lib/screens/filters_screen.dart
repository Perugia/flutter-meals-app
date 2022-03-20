import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';

  final Function saveFilters;
  final Map<String, bool> currentFilters;

  FiltersScreen(this.currentFilters, this.saveFilters);

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  Widget _buildSwitchListTile(
    String title,
    String description,
    bool currentValue,
    Function updateValue,
  ) {
    return SwitchListTile(
      activeColor: Theme.of(context).colorScheme.primary,
      title: Text(title),
      value: currentValue,
      subtitle: Text(
        description,
      ),
      onChanged: (_) => updateValue(_),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      endDrawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Adjust your meal selection.',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                _buildSwitchListTile(
                  'Gluten-free',
                  'Only include gluten-free meals.',
                  widget.currentFilters["gluten"]!,
                  (newValue) {
                    setState(
                      () {
                        widget.currentFilters["gluten"] = newValue;
                        widget.saveFilters();
                      },
                    );
                  },
                ),
                _buildSwitchListTile(
                  'Lactose-free',
                  'Only include lactose-free meals.',
                  widget.currentFilters["lactose"]!,
                  (newValue) {
                    setState(
                      () {
                        widget.currentFilters["lactose"] = newValue;
                        widget.saveFilters();
                      },
                    );
                  },
                ),
                _buildSwitchListTile(
                  'Vegetarian',
                  'Only include vegetarian meals.',
                  widget.currentFilters["vegetarian"]!,
                  (newValue) {
                    setState(
                      () {
                        widget.currentFilters["vegetarian"] = newValue;
                        widget.saveFilters();
                      },
                    );
                  },
                ),
                _buildSwitchListTile(
                  'Vegan',
                  'Only include vegan meals.',
                  widget.currentFilters["vegan"]!,
                  (newValue) {
                    setState(
                      () {
                        widget.currentFilters["vegan"] = newValue;
                        widget.saveFilters();
                      },
                    );
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
