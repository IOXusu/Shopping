@Preview
@Component
export default struct MineUserComponent {
  build() {
    Row() {
      Image($r('app.media.icon'))
        .width(35)
        .height(35)
        .margin({ left: 25 })
        .borderRadius(17.5)
      Column() {
        Text('张三')
          .fontSize(16)
        Text('xxx@qq.com')
          .fontSize(14)
          .margin({ top: 5 })
      }
      .margin({ left: 15 })
      .alignItems(HorizontalAlign.Start)
      .justifyContent(FlexAlign.Center)
    }
    .width('100%')
    .height(95)
    .margin({ top: 20 })
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