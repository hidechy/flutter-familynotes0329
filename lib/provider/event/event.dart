import 'package:event_bus/event_bus.dart';
import 'package:flutter/foundation.dart';

EventBus eventBus = EventBus();

class Event {
  Event(this.key, {this.eventData});
  String key;
  dynamic eventData;

  static const String eventKeyNotifierBaby = 'eventKeyNotifierBaby';
  static const String eventKeyNotifierChild = 'eventKeyNotifierChild';
  static const String eventKeyNotifierTimeout = 'eventKeyNotifierTimeout';
  static const String eventKeyNotifierMaintenance =
      'eventKeyNotifierMaintenance';
  static const String exentKeyNotifierSocket = 'eventKeyNotifierSocket';
  static const String eventKeyNotifierHomeMode = 'eventKeyNotifierHomeMode';
  static const String eventKeyNotifierWeightGraph = 'eventKeyNotifierWeightGraph';
  static const String eventKeyToStore = 'eventKeyToStore';

  static void fire(String key, {dynamic data}) {
    debugPrint('eventbusfire:$key');
    eventBus.fire(Event(key, eventData: data));
  }
}
