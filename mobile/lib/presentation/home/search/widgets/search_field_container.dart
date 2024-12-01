import 'package:flutter/material.dart';

class SearchFieldContainer extends StatefulWidget {
  final VoidCallback onTap;
  final String? initialText;
  final String labelText;

  const SearchFieldContainer({
    required this.labelText,
    required this.onTap,
    this.initialText,
    Key? key,
  }) : super(key: key);

  @override
  State<SearchFieldContainer> createState() => _SearchFieldContainerState();
}

class _SearchFieldContainerState extends State<SearchFieldContainer> {
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController(text: widget.initialText);
  }

  @override
  void didUpdateWidget(covariant SearchFieldContainer oldWidget) {
    controller.text = widget.initialText ?? '';
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          filled: true,
          fillColor: Colors.grey.withOpacity(0.1),
          labelText: widget.labelText,
        ),
        enabled: false,
      ),
    );
  }
}
