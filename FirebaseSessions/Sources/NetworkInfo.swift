//
// Copyright 2022 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import Foundation

#if SWIFT_PACKAGE
  import FirebaseSessionsObjC
#endif // SWIFT_PACKAGE

#if SWIFT_PACKAGE
  internal import GoogleUtilities_Environment
#else
  internal import GoogleUtilities
#endif // SWIFT_PACKAGE

protocol NetworkInfoProtocol: Sendable {
  var networkType: GULNetworkType { get }

  var mobileSubtype: String { get }
}

final class NetworkInfo: NetworkInfoProtocol {
  var networkType: GULNetworkType {
    return GULNetworkInfo.getNetworkType()
  }

  var mobileSubtype: String {
    return GULNetworkInfo.getNetworkRadioType()
  }
}
