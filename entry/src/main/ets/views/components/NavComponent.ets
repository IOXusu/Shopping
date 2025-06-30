import { ItemType } from '../mode/types'

@Preview
@Component
export default struct NavComponent {
  @State message: string = 'NavComponent';
  private navData: Array<ItemType> = [
    {
      title: '我的最爱',
      img: $r('app.media.icon')
    },
    {
      title: '历史记录',
      img: $r('app.media.icon')
    },
    {
      title: '消息',
      img: $r('app.media.icon')
    },
    {
      title: '购物车',
      img: $r('app.media.icon')
    },
    {
      title: '我的目标',
      img: $r('app.media.icon')
    },
    {
      title: '圈子',
      img: $r('app.media.icon')
    },
    {
      title: '收藏',
      img: $r('app.media.icon')
    },
    {
      title: '回收站',
      img: $r('app.media.icon')
    }
  ]

  build() {
    Column() {
      Grid() {
        ForEach(this.navData, (item: ItemType) => {
          GridItem() {
            Column() {
              Image(item.img)
                .width(25)
                .height(25)
              Text(item.title)
                .fontSize(14)
                .margin({ top: 5 })
            }.margin({ top: 10 })
          }
        })
      }
      .columnsTemplate('1fr 1fr 1fr 1fr ')
      .rowsTemplate('1fr 1fr')
      .columnsGap(10)
      .width('95%')
      .height(120)
      .margin(10)
      .padding(10)
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
}