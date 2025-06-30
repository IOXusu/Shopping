import MineUserComponent from '../views/components/MineUserComponent'
import MineConfigComponent from '../views/components/MineConfigComponent'

@Preview
@Component
export default struct Mine {
  @State message: string = '我的';

  build() {
    Column() {
      Text('我的')
        .fontSize(20)
        .fontWeight(FontWeight.Medium)
        .alignSelf(ItemAlign.Start)
      MineUserComponent()
      MineConfigComponent()
    }
    .padding({ left: 15, top: 10, right: 15 })
    .width('100%')
    .height('100%')
  }
}