// Copyright (c) 2014, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library dartpad_ui_module;

import 'dart:async';

import '../core/dependencies.dart';
import '../core/event_bus.dart';
import '../core/keys.dart';
import '../core/modules.dart';

class DartpadModule extends Module {
  Future init() {
    if (Dependencies.instance == null) {
      Dependencies.setGlobalInstance(new Dependencies());
    }

    deps[EventBus] = new EventBus();
    deps[Keys] = new Keys();

    return new Future.value();
  }
}
