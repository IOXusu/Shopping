import { ItemType } from '../mode/types'

@Preview
@Component
export default struct MineConfigComponent {
  private datas: Array<ItemType> = [
    {
      title: '推送通知',
      img: $r('app.media.ic_push_notifacation'),
      open: true
    },
    {
      title: '数据管理',
      img: $r('app.media.ic_data_manager'),
      open: false
    },
    {
      title: '菜单设置',
      img: $r('app.media.ic_setting'),
      open: false
    },
    {
      title: '关于',
      img: $r('app.media.ic_about'),
      open: false
    },
    {
      title: '清除缓存',
      img: $r('app.media.ic_clear'),
      open: false
    },
    {
      title: '隐私协议',
      img: $r('app.media.ic_privacy'),
      open: false
    },
  ]

  build() {
    List() {
      ForEach(this.datas, (item: ItemType) => {
        ListItem() {
          Row() {
            Image(item.img)
              .width(25)
              .height(25)
              .borderRadius(17.5)
            Text(item.title)
              .margin({ left: 15 })
              .layoutWeight(1)
              .fontSize(16)
            Toggle({ type: ToggleType.Switch, isOn: item.open })
          }
          .width('100%')
          .height(50)
          .alignItems(VerticalAlign.Center)
        }
      })
    }
    .width('100%')
    .margin({ left: 20, top: 20, right: 20 })
    .padding({ left: 20, top: 10, right: 20, bottom: 10 })
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