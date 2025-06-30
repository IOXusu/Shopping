@Component
export default struct Choice {
  @State message: string = '精选';

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