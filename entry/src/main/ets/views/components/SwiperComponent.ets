@Preview
@Component
export default struct SwiperComponent {
  @State message: string = 'SwiperComponent';
  private banners: Array<Resource> = [
    $r('app.media.banner_1'),
    $r('app.media.banner_2'),
    $r('app.media.banner_3')
  ]

  build() {
    Column() {
      Swiper() {
        ForEach(this.banners, (item: Resource) => {
          Image(item)
            .width('95%')
            .height('160vp')
        })
      }
      .index(0)
      .autoPlay(true)
      .itemSpace(10)
    }.width('100%')
    .margin({ top: 5 })
    .justifyContent(FlexAlign.Center)
  }
}