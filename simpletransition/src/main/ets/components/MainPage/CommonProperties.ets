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

namespace Transition {
  const DEFAULT_POSITION: Position = { x: '0vp', y: '50vp' }
  const DEFAULT_TEXT: string = 'Toggle'
  const DEFAULT_BUTTON_COLOR: ResourceColor = Color.Blue
  const DEFAULT_CONTAINER_SIZE: SizeOptions = { width: '350vp', height: '90vp' }
  const DEFAULT_CONTAINER_COLOR: ResourceColor = Color.Gray
  const DEFAULT_CONTAINER_POSITION: Position = { x: '0vp', y: '50vp' }
  const DEFAULT_CONTAINER_BORDER_WIDTH: number = 3
  const DEFAULT_COMPONENT_SIZE: SizeOptions = { width: '60vp', height: '90vp' }
  const DEFAULT_COMPONENT_COLOR: ResourceColor = Color.Blue
  const DEFAULT_TRANSITION_DURATION: number = 1000
  const DEFAULT_COMPONENT_BORDER_WIDTH: number = 0
  const DEFAULT_SPRING_STIFFNESS: number = 0.4
  const DEFAULT_SPRING_MASS: number = 1
  const DEFAULT_SPRING_VELOCITY: number = 25
  const DEFAULT_SPRING_DAMPING: number = 8.5

  export class Model {
    protected position: Position = DEFAULT_POSITION
    protected text: string = DEFAULT_TEXT
    protected buttonColor: ResourceColor= DEFAULT_BUTTON_COLOR
    protected containerSize: SizeOptions= DEFAULT_CONTAINER_SIZE
    protected containerColor: ResourceColor= DEFAULT_CONTAINER_COLOR
    protected containerPosition: Position= DEFAULT_CONTAINER_POSITION
    protected containerBorderWidth: number= DEFAULT_CONTAINER_BORDER_WIDTH
    protected componentSize: SizeOptions= DEFAULT_COMPONENT_SIZE
    protected componentColor: ResourceColor= DEFAULT_COMPONENT_COLOR
    protected transitionTime: number= DEFAULT_TRANSITION_DURATION
    protected finalPosition: Position = {
      x: (this.lenToNum(this.containerSize.width) - this.lenToNum(this.componentSize.width)).toString(),
      y: this.position.y
    }
    protected componentBorderWidth: number= DEFAULT_COMPONENT_BORDER_WIDTH
    protected stiffness: number = DEFAULT_SPRING_STIFFNESS
    protected mass: number = DEFAULT_SPRING_MASS
    protected velocity: number = DEFAULT_SPRING_VELOCITY
    protected damping: number = DEFAULT_SPRING_DAMPING
    lenToNum(value: Length): number {
      return parseFloat(value.toString())
    }

    setPosition(position: Position): Model {
      this.position = (position != null && position != undefined) ? position : DEFAULT_POSITION
      return this
    }

    getPosition(): Position {
      return this.position
    }

    setContainerPosition(position: Position): Model {
      this.position = (position != null && position != undefined) ? position : DEFAULT_CONTAINER_POSITION
      return this
    }

    getContainerPosition(): Position {
      return this.position
    }

    setText(text: string): Model {
      this.text = (text != null && text != undefined) ? text : DEFAULT_TEXT
      return this
    }

    getText(): string {
      return this.text
    }

    setButtonColor(color: ResourceColor): Model {
      this.buttonColor = (color != null && color != undefined) ? color : DEFAULT_BUTTON_COLOR
      return this
    }

    getButtonColor(): ResourceColor {
      return this.buttonColor
    }

    setContainerColor(color: ResourceColor): Model {
      this.containerColor = (color != null && color != undefined) ? color : DEFAULT_CONTAINER_COLOR
      return this
    }

    getContainerColor(): ResourceColor {
      return this.containerColor
    }

    setComponentColor(color: ResourceColor): Model {
      this.componentColor = (color != null && color != undefined) ? color : DEFAULT_COMPONENT_COLOR
      return this
    }

    getComponentColor(): ResourceColor {
      return this.componentColor
    }

    setFinalPosition(finalPosition: Position): Model{
      this.finalPosition = (finalPosition != null && finalPosition != undefined) ? finalPosition : {
                                                                                                     x: (this.lenToNum(this.containerSize.width) - this.lenToNum(this.componentSize.width)).toString(),
                                                                                                     y: this.position.y
                                                                                                   }
      return this
    }

    getFinalPosition(): Position{
      return this.finalPosition
    }

    setTransitionDuration(time: number): Model {
      this.transitionTime = (time != null && time != undefined) ? time : DEFAULT_TRANSITION_DURATION
      return this
    }

    getTransitionDuration(): number{
      return this.transitionTime
    }

    setContainerBorderWidth(width: number): Model {
      this.containerBorderWidth = (width != null && width != undefined) ? width : DEFAULT_CONTAINER_BORDER_WIDTH
      return this
    }

    getContainerBorderWidth(): number
    {
      return this.containerBorderWidth
    }

    setComponentBorderWidth(width: number): Model {
      this.componentBorderWidth = (width != null && width != undefined) ? width : DEFAULT_COMPONENT_BORDER_WIDTH
      return this
    }

    getComponentBorderWidth(): number
    {
      return this.componentBorderWidth
    }

    setComponentSize(size: SizeOptions): Model {
      this.componentSize = (size != null && size != undefined) ? size : DEFAULT_COMPONENT_SIZE
      return this
    }

    getComponentSize(): SizeOptions{
      return this.componentSize
    }

    setContainerSize(size: SizeOptions): Model {
      this.containerSize = (size != null && size != undefined) ? size : DEFAULT_CONTAINER_SIZE
      return this
    }

    getContainerSize(): SizeOptions{
      return this.containerSize
    }

    setSpringStiffness(stiffness: number): Model {
      this.stiffness = (stiffness != null && stiffness != undefined) ? stiffness : DEFAULT_SPRING_STIFFNESS
      return this
    }

    getSpringStiffness(): number{
      return this.stiffness
    }

    setSpringMass(mass: number): Model {
      this.mass = (mass != null && mass != undefined) ? mass : DEFAULT_SPRING_MASS
      return this
    }

    getSpringMass(): number{
      return this.mass
    }

    setSpringVelocity(velocity: number): Model {
      this.velocity = (velocity != null && velocity != undefined) ? velocity : DEFAULT_SPRING_VELOCITY
      return this
    }

    getSpringVelocity(): number{
      return this.velocity
    }

    setSpringDamping(damping: number): Model {
      this.damping = (damping != null && damping != undefined) ? damping : DEFAULT_SPRING_DAMPING
      return this
    }

    getSpringDamping(): number{
      return this.damping
    }
  }
}

export { Transition }