import router from '@ohos.router';

@Entry
@Component
struct Main {
  @State message: string = '首页';
  private items: Array<{ title: string }> = [
    { title: '首页' },
    { title: '精选' },
    { title: '我的' },
  ]

  build() {
    Column() {
      Tabs({ barPosition: BarPosition.End }) {
        ForEach(this.items, (item) => {
          TabContent() {
            Column() {
              Text(item.title)
            }
          }.tabBar(item.title)
        })
      }
    }
    .height('100%')
  }
}