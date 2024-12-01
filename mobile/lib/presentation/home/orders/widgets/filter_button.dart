import 'package:flutter/material.dart';

enum FilterType { all, pending, succes, fail }

String stringFromFilterType(FilterType type) {
  switch (type) {
    case FilterType.pending:
      return 'pending';
    case FilterType.fail:
      return 'fail';
    case FilterType.succes:
      return 'success';
    default:
      return '';
  }
}

class FilterButton extends StatelessWidget {
  final Function(FilterType) onFilterChanged;
  final FilterType currentFilter;

  const FilterButton({
    required this.onFilterChanged,
    required this.currentFilter,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      elevation: 2,
      child: Icon(
        currentFilter == FilterType.all
            ? Icons.filter
            : currentFilter == FilterType.pending
                ? Icons.filter_1
                : currentFilter == FilterType.succes
                    ? Icons.filter_2
                    : Icons.filter_3,
        color: Colors.white,
      ),
      itemBuilder: (context) {
        return <PopupMenuEntry<Text>>[
          PopupMenuItem(
            child: Text(
              'All',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            onTap: () => onFilterChanged(FilterType.all),
          ),
          PopupMenuItem(
            child: Text(
              'Pending',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            onTap: () => onFilterChanged(FilterType.pending),
          ),
          PopupMenuItem(
            child: Text(
              'Success',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            onTap: () => onFilterChanged(FilterType.succes),
          ),
          PopupMenuItem(
            child: Text(
              'Fail',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            onTap: () => onFilterChanged(FilterType.fail),
          ),
        ];
      },
    );
  }
}
