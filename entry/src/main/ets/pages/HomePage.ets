import router from '@ohos.router';

@Entry
@Component
struct HomePage {
  @State acTemperature: number = 24
  @State acMode: string = '制冷'

  build() {
    Column() {
      // 首页内容
      Column() {
        Text('智慧客房')
          .fontSize(24)
          .fontWeight(FontWeight.Bold)
          .fontColor('#1a73e8')
          .margin({ top: 20, bottom: 20 })

        // 快捷服务
        Row() {
          Column() { Image($rawfile('home_icon_undisturb.png')).width(30).height(30); Text('请勿打扰').fontSize(12).margin({ top: 5 }) }
          .margin({ right: 30 })
          .onClick(() => {
            router.pushUrl({
              url: 'pages/ServicePage',
              params: { service: '请勿打扰' }
            })
          })
          Column() { Image($rawfile('home_icon_clear.png')).width(30).height(30); Text('打扫').fontSize(12).margin({ top: 5 }) }
          .margin({ right: 30 })
          .onClick(() => {
            router.pushUrl({
              url: 'pages/ServicePage',
              params: { service: '打扫' }
            })
          })
          Column() { Image($rawfile('service_btn_logout.png')).width(30).height(30); Text('退房').fontSize(12).margin({ top: 5 }) }
          .margin({ right: 30 })
          .onClick(() => {
            router.pushUrl({
              url: 'pages/ServicePage',
              params: { service: '退房' }
            })
          })
          Column() { Image($rawfile('service_btn_sos_bg.png')).width(30).height(30); Text('SOS').fontSize(12).margin({ top: 5 }) }
          .onClick(() => {
            router.pushUrl({
              url: 'pages/ServicePage',
              params: { service: 'SOS' }
            })
          })
        }
        .width('90%')
        .justifyContent(FlexAlign.Center)
        .padding(15)
        .backgroundColor('#ffffff')
        .borderRadius(15)
        .margin({ bottom: 30 })

        // 空调控制
        Column() {
          Text('空调控制').fontSize(20).fontWeight(FontWeight.Bold).margin({ bottom: 20 })
          Text(this.acTemperature + '°C').fontSize(48).fontWeight(FontWeight.Bold).fontColor('#1a73e8').margin({ bottom: 20 })

          Row() {
            Button('-').width(60).height(60).backgroundColor('#e0e0e0').fontSize(24).borderRadius(30)
              .onClick(() => { if (this.acTemperature > 16) this.acTemperature-- })
            Text('   ')
            Button('+').width(60).height(60).backgroundColor('#e0e0e0').fontSize(24).borderRadius(30)
              .onClick(() => { if (this.acTemperature < 30) this.acTemperature++ })
          }.margin({ bottom: 20 })

          Row() {
            Button('制冷').backgroundColor(this.acMode === '制冷' ? '#1a73e8' : '#e0e0e0')
              .fontColor(this.acMode === '制冷' ? '#ffffff' : '#333333')
              .borderRadius(15).margin({ right: 10 })
              .onClick(() => { this.acMode = '制冷' })
            Button('制热').backgroundColor(this.acMode === '制热' ? '#1a73e8' : '#e0e0e0')
              .fontColor(this.acMode === '制热' ? '#ffffff' : '#333333')
              .borderRadius(15).margin({ right: 10 })
              .onClick(() => { this.acMode = '制热' })
            Button('送风').backgroundColor(this.acMode === '送风' ? '#1a73e8' : '#e0e0e0')
              .fontColor(this.acMode === '送风' ? '#ffffff' : '#333333')
              .borderRadius(15).margin({ right: 10 })
              .onClick(() => { this.acMode = '送风' })
            Button('除湿').backgroundColor(this.acMode === '除湿' ? '#1a73e8' : '#e0e0e0')
              .fontColor(this.acMode === '除湿' ? '#ffffff' : '#333333')
              .borderRadius(15)
              .onClick(() => { this.acMode = '除湿' })
          }
        }
        .width('90%')
        .padding(20)
        .backgroundColor('#ffffff')
        .borderRadius(15)
      }
      .width('100%')
      .layoutWeight(1)
      .alignItems(HorizontalAlign.Center)

      // 底部导航栏
      Row() {
        Column() { Image($rawfile('tabs_icon_home_select.png')).width(24).height(24); Text('首页').fontSize(12).margin({ top: 2 }) }
        .onClick(() => { }).layoutWeight(1)
        Column() { Image($rawfile('tabs_icon_light_unselect.png')).width(24).height(24); Text('灯光').fontSize(12).margin({ top: 2 }) }
        .onClick(() => { router.pushUrl({ url: 'pages/LightPage' }) }).layoutWeight(1)
        Column() { Image($rawfile('tabs_icon_curtain_unselect.png')).width(24).height(24); Text('窗帘').fontSize(12).margin({ top: 2 }) }
        .onClick(() => { router.pushUrl({ url: 'pages/CurtainPage' }) }).layoutWeight(1)
        Column() { Image($rawfile('tabs_icon_service_unselect.png')).width(24).height(24); Text('服务').fontSize(12).margin({ top: 2 }) }
        .onClick(() => { router.pushUrl({ url: 'pages/ServicePage' }) }).layoutWeight(1)
      }
      .width('100%')
      .padding({ top: 8, bottom: 20 })
      .backgroundColor('#ffffff')
      .borderRadius({ topLeft: 20, topRight: 20 })
    }
    .width('100%')
    .height('100%')
    .backgroundImage($rawfile('bg_hotel_full.jpg'))
    .backgroundImageSize(ImageSize.Cover)
  }
}