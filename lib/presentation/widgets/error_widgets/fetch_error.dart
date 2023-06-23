import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ErrorDisclaimer extends StatelessWidget {
  const ErrorDisclaimer({Key? key, required this.onRetry}) : super(key: key);
  final void Function() onRetry;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Icon(Icons.error_outline),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  tr("error_widget.an_error_occurred_while_loading"),
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          TextButton.icon(
            style: TextButton.styleFrom(
              backgroundColor: Colors.grey.withOpacity(0.2),
              padding: const EdgeInsets.all(8),
            ),
            onPressed: onRetry,
            icon: Icon(
              Icons.autorenew_rounded,
              size: 18,
              color: Theme.of(context).textTheme.titleLarge!.color,
            ),
            label: Text(
              tr("error_widget.retry"),
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ],
      ),
    );
  }
}
