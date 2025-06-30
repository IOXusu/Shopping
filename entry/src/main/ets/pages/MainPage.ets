import router from '@ohos.router';
import Home from '../views/HomePage'
import Choice from '../views/ChoicePage'
import Mine from '../views/MinePage'

@Entry
@Component
struct Main {
  @State message: string = '首页';
  @State currentIndex: number = 0;
  private items: Array<{
    title: string,
    iconSelected: Resource,
    iconNormal: Resource
  }> = [
    { title: '首页', iconSelected: $r('app.media.ic_home_selected'), iconNormal: $r('app.media.ic_home_normal') },
    { title: '精选', iconSelected: $r('app.media.ic_choice_selected'), iconNormal: $r('app.media.ic_choice_normal') },
    { title: '我的', iconSelected: $r('app.media.ic_mine_selected'), iconNormal: $r('app.media.ic_mine_normal') }
  ]

  @Builder
  TabBuilder(item: {
    title: string,
    iconSelected: Resource,
    iconNormal: Resource
  }, index: number) {
    Column() {
      Image(index === this.currentIndex ? item.iconSelected : item.iconNormal)
        .width('25')
        .height('25')
      Text(item.title)
        .fontSize(14)
        .fontColor(index === this.currentIndex ? '#007dee' : '#182431')
        .fontWeight(500)
        .margin({ top: 5 })
    }.width('100%')
  }

  build() {
    Column() {
      Tabs({ barPosition: BarPosition.End }) {
        ForEach(this.items, (item: {
          title: string,
          iconSelected: Resource,
          iconNormal: Resource
        }, index) => {
          TabContent() {
            if (index === 0) {
              Home()
            } else if (index === 1) {
              Choice()
            } else if (index === 2) {
              Mine()
            }
          }.tabBar(this.TabBuilder(item, index))
        })
      }.onChange((index) => {
        this.currentIndex = index
      })
    }
    .height('100%')
  }
}