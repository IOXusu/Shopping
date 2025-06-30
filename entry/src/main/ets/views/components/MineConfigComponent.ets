@Preview
@Component
export default struct MineUserComponent {
  build() {
    Column() {
      Row() {
        Image($r('app.media.icon'))
          .width(25)
          .height(25)
          .borderRadius(17.5)
        Text('推送通知')
          .margin({ left: 15 })
          .layoutWeight(1)
          .fontSize(16)
        Toggle({ type: ToggleType.Switch })
      }
      .width('100%')
      .height(50)
      .alignItems(VerticalAlign.Center)

      Row() {
        Image($r('app.media.icon'))
          .width(25)
          .height(25)
          .borderRadius(17.5)
        Text('数据管理')
          .margin({ left: 15 })
          .layoutWeight(1)
          .fontSize(16)
        Toggle({ type: ToggleType.Switch })
      }
      .width('100%')
      .height(50)
      .alignItems(VerticalAlign.Center)

      Row() {
        Image($r('app.media.icon'))
          .width(25)
          .height(25)
          .borderRadius(17.5)
        Text('菜单设置')
          .margin({ left: 15 })
          .layoutWeight(1)
          .fontSize(16)
        Toggle({ type: ToggleType.Switch })
      }
      .width('100%')
      .height(50)
      .alignItems(VerticalAlign.Center)

      Row() {
        Image($r('app.media.icon'))
          .width(25)
          .height(25)
          .borderRadius(17.5)
        Text('关于')
          .margin({ left: 15 })
          .layoutWeight(1)
          .fontSize(16)
        Toggle({ type: ToggleType.Switch })
      }
      .width('100%')
      .height(50)
      .alignItems(VerticalAlign.Center)

      Row() {
        Image($r('app.media.icon'))
          .width(25)
          .height(25)
          .borderRadius(17.5)
        Text('清除缓存')
          .margin({ left: 15 })
          .layoutWeight(1)
          .fontSize(16)
        Toggle({ type: ToggleType.Switch })
      }
      .width('100%')
      .height(50)
      .alignItems(VerticalAlign.Center)

      Row() {
        Image($r('app.media.icon'))
          .width(25)
          .height(25)
          .borderRadius(17.5)
        Text('隐私协议')
          .margin({ left: 15 })
          .layoutWeight(1)
          .fontSize(16)
        Toggle({ type: ToggleType.Switch })
      }
      .width('100%')
      .height(50)
      .alignItems(VerticalAlign.Center)
    }
    .width('100%')
    .margin({ left: 20, top: 20, right: 20 })
    .padding({ left: 20, top: 10, right: 20, bottom: 10 })
    .backgroundColor(Color.White)
    .borderRadius(25)
    .shadow({
      radius: 4,
      color: 'rgba(0,0,0,0.02)',
      offsetY: 1
    })
    .shadow({
      radius: 20,
      color: 'rgba(0,0,0,0.08)',
      offsetY: 2
    })
  }
}