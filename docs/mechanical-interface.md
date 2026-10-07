# Mechanical interface

## Mainboard coordinate convention

For Rev A mechanical review:

- y = 0 mm — rear enclosure wall
- y = 48 mm — front / display side
- x = 0 mm — left side
- x = 88 mm — right side

## USB-C

The current USB-C connector is located near the rear-right area of the Mainboard and opens toward the rear wall.

The enclosure must provide:

- plug overmold clearance;
- insertion/removal clearance;
- no rib loading the connector shell;
- no standoff collision with shell anchors.

## ESP32 antenna

The antenna volume must remain free of:

- copper outside the module design intent;
- battery;
- speaker magnet;
- cable bundles;
- metal fasteners or enclosure metal.

The enclosure above the antenna should remain plastic.

## User controls

User-facing controls are mechanically carried by daughterboards:

- Encoder board — right wall
- Snooze board — below top key
- Wake LED board — bottom diffuser channel

The Mainboard should not carry encoder shaft or Snooze-button mechanical loads.

## Display and frontlight

E Ink and frontlight FPCs connect directly to the Mainboard.

Mechanical design should allow:

- acceptable bend radius;
- connector access during service;
- display/FPC disconnection before Mainboard removal.

## Service objective

Battery, speaker, Encoder board, Snooze board, Wake LED board, display and Mainboard should be individually replaceable without cutting wires or desoldering another mechanical module.
