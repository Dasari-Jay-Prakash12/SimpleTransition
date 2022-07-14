import { SimpleTransition, Transition } from '@ohos/simple-transition'

@Entry
@Component
struct sample {
  models: Transition.Model = new Transition.Model()

  aboutToAppear() {
  }

  build() {
    Column() {
      SimpleTransition({
        model: this.models,
      })
    }
  }
}

