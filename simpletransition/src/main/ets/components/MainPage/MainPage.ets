/*
 * Copyright (c) 2022 Application Library Engineering Group.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import Curves from '@ohos.curves'
import { Transition } from './CommonProperties'

@Component
export struct SimpleTransition {
  @State toggle: boolean = true
  model: Transition.Model= undefined

  build() {
    Column({ space: 10 }) {
      Button(this.model.getText())
        .onClick(() => {
          this.toggle = !this.toggle;
        }).backgroundColor(this.model.getButtonColor())
      Column()
        .size(this.model.getContainerSize())
        .backgroundColor(this.model.getContainerColor())
        .position(this.model.getPosition())
        .borderWidth(this.model.getContainerBorderWidth());
      Column() {
      }
      .position(this.toggle ? this.model.getPosition() : this.model.getFinalPosition())
      .borderWidth(this.model.getComponentBorderWidth())
      .size(this.model.getComponentSize())
      .backgroundColor(this.model.getComponentColor())
      .onAppear(() => {
      })
      .animation({
        duration: this.model.getTransitionDuration(),
        curve: Curves.spring(this.model.getSpringStiffness(), this.model.getSpringMass(), this.model.getSpringVelocity(), this.model.getSpringDamping())
      })
    }
  }
}

