@Component
export default struct Mine {
  @State message: string = '我的';

  build() {
    Column() {
      Text(this.message)
    }
    .alignItems(HorizontalAlign.Center)
    .justifyContent(FlexAlign.Center)
    .width('100%')
    .height('100%')
  }
}