import 'package:bonsoir/bonsoir.dart';
import 'package:flutter/material.dart';

/// Represents a Bonsoir event.
abstract class BonsoirEvent<T> {
  /// The event type.
  final T type;

  /// The Bonsoir service (if any).
  final BonsoirService service;

  /// Creates a new Bonsoir event instance.
  const BonsoirEvent({
    @required this.type,
    this.service,
  });

  /// Returns whether the provided service is a resolved service.
  bool get isServiceResolved => service is ResolvedBonsoirService;
}
