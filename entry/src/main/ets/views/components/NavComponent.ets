@Component
export default struct NavComponent {
  @State message: string = 'NavComponent';

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