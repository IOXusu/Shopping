import router from '@ohos.router';

@Entry
@Component
struct Main {
  @State message: string = '首页';

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Divider()
        Button("返回")
          .margin({ top: 20 })
          .onClick(() => {
            router.back()
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}