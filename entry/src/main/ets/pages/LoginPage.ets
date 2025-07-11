import hilog from '@ohos.hilog';
import promptAction from '@ohos.promptAction';
import router from '@ohos.router';
import dataPreferences from '@ohos.data.preferences';
import Preferences from '@ohos.data.preferences';

let preferences: Preferences.Preferences = null;


@Entry
@Component
struct Login {
  @State message: string = '欢迎登录';
  @State name: string = '';
  @State pwd: string = '';
  private slDatas: Array<string> = [
    "微信",
    "微博",
    "抖音",
  ]

  aboutToAppear() {
    let promise = dataPreferences.getPreferences(getContext(), 'mystore');
    promise.then((object) => {
      preferences = object;
      preferences.get('isLogin', false, function (err, val) {
        if (err) {
          return;
        }
        if (val) {
          router.replaceUrl({ url: "pages/MainPage" })
        }
      })
    })
  }

  build() {
    Row() {
      Column() {
        //Logo
        Image($r('app.media.icon'))
          .width(80)
          .height(80)
        //欢迎登录
        Text(this.message)
          .fontSize(30)
          .margin({ top: 20 })
          .fontColor('#000000')
          .fontWeight(FontWeight.Medium)
        //用户名
        TextInput({ placeholder: "请输入用户名" })
          .inputStyle()
          .maxLength(11)
          .onChange((value) => {
            this.name = value
          })
        //密码
        TextInput({ placeholder: "请输入密码" })
          .inputStyle()
          .type(InputType.Password)
          .onChange((value) => {
            this.pwd = value
          })
        //短信登录和忘记密码
        Row() {
          Text('短信验证码登录')
            .fontSize(14)
            .fontColor('#296CF5')
          Text('忘记密码')
            .fontSize(14)
            .fontColor('#296CF5')
        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)
        .padding({ left: 15, top: 20, right: 15, bottom: 20 })

        //登录
        Button('登录')
          .width('90%')
          .onClick(() => {
            if (this.name.length == 0) {
              promptAction.showToast({ message: '请输入用户名，最长11位', duration: 1000, });
              return
            }
            if (this.pwd.length == 0) {
              promptAction.showToast({ message: '请输入密码', duration: 1000 });
              return
            }
            promptAction.showToast({ message: '登录成功' });

            preferences.put("isLogin", true)
            preferences.flush(() => {
              router.pushUrl({ url: "pages/MainPage" })
              // router.replaceUrl({ url: "pages/MainPage" })
            })
          })

        Text('注册账号其他方式登录')
          .fontSize(14)
          .margin({ top: 15 })
          .fontColor('#296CF5')

        Row({ space: 20 }) {
          ForEach(this.slDatas, (item) => {
            Button(item).slButtonStyle()
          })
        }
        .width('100%')
        .margin({ top: 15 })
        .justifyContent(FlexAlign.SpaceEvenly)
      }
      .width('100%')
    }.margin({ top: 80 })
  }
}

@Extend(TextInput)
function inputStyle() {
  .fontSize(18)
  .width('100%')
  .height(50)
  .placeholderColor(0x999999)
  .margin({ top: 15, left: 15, right: 15 })
}

@Extend(Button)
function slButtonStyle() {
  .type(ButtonType.Circle)
  .fontSize(8)
  .width(55)
}