import { ItemType } from '../mode/types'

@Preview
@Component
export default struct ListComponent {
  @State message: string = 'ListComponent';
  private listData: Array<ItemType> = [
    {
      title: '新品首发',
      img: $r('app.media.icon')
    },
    {
      title: '新品首发',
      img: $r('app.media.icon')
    },
    {
      title: '新品首发',
      img: $r('app.media.icon')
    },
    {
      title: '新品首发',
      img: $r('app.media.icon')
    },
    {
      title: '新品首发',
      img: $r('app.media.icon')
    },
    {
      title: '新品首发',
      img: $r('app.media.icon')
    }
  ]

  build() {
    Column() {
      Text('列表')
        .fontSize(16)
        .fontWeight(FontWeight.Medium)
        .alignSelf(ItemAlign.Start)
        .margin(10)
      List({ space: 12 }) {
        ForEach(this.listData, (item: ItemType) => {
          ListItem() {
            Stack() {
              Image(item.img)
                .objectFit(ImageFit.Cover)
                .aspectRatio(1.3)
                .margin({ left: 10, right: 10 })
                .borderRadius(12)
              Text(item.title)
                .fontSize(14)
                .alignSelf(ItemAlign.Start)
                .margin(15)
            }.alignContent(Alignment.TopStart)
          }
        })
      }
      .margin({ top: 15 })
      .width('95%')
      .lanes(2)
    }
  }
}