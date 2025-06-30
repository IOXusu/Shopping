import http from '@ohos.net.http';
import hilog from '@ohos.hilog';

@Component
export default struct Choice {
  @State message: string = '精选';

  build() {
    Column() {
      Text(this.message)
      Button('Get请求')
        .onClick(() => {
          console.log("点击了")
          let httpRequest = http.createHttp();

          httpRequest.request(
            "http://192.168.0.102:8080/hdd/service/hello",
            {
              method: http.RequestMethod.GET,
              header: {
                'Content-Type': 'application/json'
              },
            }, (err, data) => {
            this.message = JSON.stringify(data)
            console.info('Result:' + JSON.stringify(data));
            hilog.info(0x0000, "TAG", JSON.stringify(data))
          })
        })
    }
    .alignItems(HorizontalAlign.Center)
    .justifyContent(FlexAlign.Center)
    .width('100%')
    .height('100%')
  }
}