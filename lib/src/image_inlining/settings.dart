// Copyright 2015 Google Inc. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
part of scissors.src.image_inlining.transformer;

abstract class ImageInliningSettings {
  final imageInlining = new Setting<ImageInliningMode>('imageInlining',
      debugDefault: ImageInliningMode.linkInlinedImages,
      releaseDefault: ImageInliningMode.inlineInlinedImages,
      parser:
          new EnumParser<ImageInliningMode>(ImageInliningMode.values).parse);

  final packageRewrites = new Setting<String>('packageRewrites',
      defaultValue: "^package:,packages/");
}

class _ImageInliningSettings extends SettingsBase with ImageInliningSettings {
  _ImageInliningSettings(settings) : super(settings);
}
