import router from '@ohos.router'
@Entry
@Component
struct ServicePage {
  @State currentService: string = ''
  build() {
    Column() {
      // 返回按钮
      Row() {
        Image($rawfile('light_icon_back.png')).width(16).height(16)
        Text('返回').fontSize(16).fontColor('#1a73e8').margin({ left: 5 })
      }
      .width('90%')
      .margin({ top: 20, bottom: 10 })
      .onClick(() => {
        router.back()
      })

      // 顶部标题
      Text('客房服务')
        .fontSize(24)
        .fontWeight(FontWeight.Bold)
        .fontColor('#333333')
        .margin({ top: 30, bottom: 20 })

      // SOS紧急按钮
      Column() {
        Image($rawfile('service_btn_sos_bg.png')).width(60).height(60)
        Text('SOS 紧急呼叫')
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .fontColor('#ffffff')
          .margin({ top: 10 })
        Text('长按3秒触发')
          .fontSize(13)
          .fontColor('#ffcccc')
          .margin({ top: 5 })
      }
      .width('90%')
      .padding(30)
      .backgroundColor('#ff4444')
      .borderRadius(20)
      .alignItems(HorizontalAlign.Center)
      .margin({ bottom: 25 })

      // 服务列表
      Text('常用服务')
        .fontSize(16)
        .fontWeight(FontWeight.Bold)
        .width('90%')
        .margin({ bottom: 15 })

      // 请勿打扰
      Row() {
        Image($rawfile('service_icon_do_not_disturb.png')).width(24).height(24)
        Text('请勿打扰').fontSize(15).margin({ left: 10 })
        Blank()
        Button('开启').width(60).height(30).backgroundColor('#1a73e8').fontSize(13).borderRadius(15)
      }
      .width('90%')
      .padding({ left: 15, right: 15, top: 12, bottom: 12 })
      .backgroundColor('#ffffff')
      .borderRadius(12)
      .margin({ bottom: 10 })

      // 打扫
      Row() {
        Image($rawfile('service_icon_clean_room.png')).width(24).height(24)
        Text('打扫房间').fontSize(15).margin({ left: 10 })
        Blank()
        Button('呼叫').width(60).height(30).backgroundColor('#1a73e8').fontSize(13).borderRadius(15)
      }
      .width('90%')
      .padding({ left: 15, right: 15, top: 12, bottom: 12 })
      .backgroundColor('#ffffff')
      .borderRadius(12)
      .margin({ bottom: 10 })

      // 退房
      Row() {
        Image($rawfile('service_btn_logout.png')).width(24).height(24)
        Text('退房').fontSize(15).margin({ left: 10 })
        Blank()
        Button('申请').width(60).height(30).backgroundColor('#ff8c00').fontSize(13).borderRadius(15)
      }
      .width('90%')
      .padding({ left: 15, right: 15, top: 12, bottom: 12 })
      .backgroundColor('#ffffff')
      .borderRadius(12)
      .margin({ bottom: 10 })

      // 送餐
      Row() {
        Text('🍽️').fontSize(24)
        Text('送餐服务').fontSize(15).margin({ left: 10 })
        Blank()
        Button('呼叫').width(60).height(30).backgroundColor('#1a73e8').fontSize(13).borderRadius(15)
      }
      .width('90%')
      .padding({ left: 15, right: 15, top: 12, bottom: 12 })
      .backgroundColor('#ffffff')
      .borderRadius(12)
      .margin({ bottom: 10 })

      // 叫醒服务
      Row() {
        Text('⏰').fontSize(24)
        Text('叫醒服务').fontSize(15).margin({ left: 10 })
        Blank()
        Button('设置').width(60).height(30).backgroundColor('#1a73e8').fontSize(13).borderRadius(15)
      }
      .width('90%')
      .padding({ left: 15, right: 15, top: 12, bottom: 12 })
      .backgroundColor('#ffffff')
      .borderRadius(12)
      .margin({ bottom: 10 })
    }
    .width('100%')
    .height('100%')
    .alignItems(HorizontalAlign.Center)
    .backgroundImage($rawfile('bg_hotel_full.jpg'))
    .backgroundImageSize(ImageSize.Cover)
  }
}