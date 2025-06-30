@Component
export default struct ListComponent {
  @State message: string = 'ListComponent';

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