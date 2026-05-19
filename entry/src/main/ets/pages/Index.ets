import router from '@ohos.router';

@Entry
@Component
struct Index {
  build() {
    Column() {
      // 标题
      Text('智慧客房')
        .fontSize(36)
        .fontWeight(FontWeight.Bold)
        .fontColor('#1a73e8')
        .margin({ bottom: 50 })

      // 房号输入框
      TextInput({ placeholder: '请输入房号' })
        .width('80%')
        .height(50)
        .margin({ bottom: 20 })
        .backgroundColor('#ffffff')
        .borderRadius(10)

      // 密码输入框
      TextInput({ placeholder: '请输入密码' })
        .width('80%')
        .height(50)
        .margin({ bottom: 30 })
        .backgroundColor('#ffffff')
        .borderRadius(10)
        .type(InputType.Password)

      // 登录按钮
      Button('立即入住')
        .onClick(() => {
          router.pushUrl({ url: 'pages/HomePage' })
        })
        .width('80%')
        .height(50)
        .backgroundColor('#1a73e8')
        .fontColor('#ffffff')
        .fontSize(18)
        .borderRadius(10)

    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
    .alignItems(HorizontalAlign.Center)
    .backgroundImage($rawfile('bg_hotel_full.jpg'))
    .backgroundImageSize(ImageSize.Cover)
  }
}