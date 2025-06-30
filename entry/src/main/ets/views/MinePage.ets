import MineUserComponent from '../views/components/MineUserComponent'
import MineConfigComponent from '../views/components/MineConfigComponent'
import router from '@ohos.router';


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
      Button('退出登录')
        .width('65%')
        .height(50)
        .margin({ top: 50 })
        .fontSize(16)
        .fontColor(Color.Red)
        .backgroundColor('#f1f2f5')
        .onClick(() => {
          router.pushUrl({
            url: 'pages/LoginPage'
          })
        })
    }
    .padding({ left: 15, top: 10, right: 15 })
    .width('100%')
    .height('100%')
  }
}