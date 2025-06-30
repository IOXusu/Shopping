import SwiperComponent from '../views/components/SwiperComponent'
import ListComponent from '../views/components/ListComponent'
import NavComponent from '../views/components/NavComponent'

@Preview
@Component
export default struct Home {
  @State message: string = '首页';

  build() {
    Scroll() {
      Column() {
        SwiperComponent()
        NavComponent()
        ListComponent()
      }.width('100%')
    }
    .scrollBar(BarState.Auto)
  }
}