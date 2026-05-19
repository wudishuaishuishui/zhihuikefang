import router from '@ohos.router'
@Entry
@Component
struct CurtainPage {
  @State curtainOpen: boolean = true
  @State screenOpen: boolean = false
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
      Row() {
        Image($rawfile('curtain_icon_top_bar.png')).width(28).height(28)
        Text('窗帘控制').fontSize(24).fontWeight(FontWeight.Bold).fontColor('#333333').margin({ left: 8 })
      }
      .margin({ top: 30, bottom: 20 })

      // 全部打开/全部关闭
      Row() {
        Button('全部打开')
          .width(130).height(45)
          .backgroundColor('#1a73e8')
          .fontColor('#ffffff')
          .fontSize(15)
          .borderRadius(22)
          .margin({ right: 20 })
          .onClick(() => {
            this.curtainOpen = true
            this.screenOpen = true
          })

        Button('全部关闭')
          .width(130).height(45)
          .backgroundColor('#ff4444')
          .fontColor('#ffffff')
          .fontSize(15)
          .borderRadius(22)
          .onClick(() => {
            this.curtainOpen = false
            this.screenOpen = false
          })
      }
      .margin({ bottom: 30 })

      // 布帘控制
      Column() {
        Row() {
          Image($rawfile('curtain_icon_left_part.png')).width(22).height(22)
          Text('布帘').fontSize(18).fontWeight(FontWeight.Bold).margin({ left: 5 })
        }
        .width('100%')
        .margin({ bottom: 15 })

        Row() {
          Button('打开')
            .width(90).height(40)
            .backgroundColor(this.curtainOpen ? '#e0e0e0' : '#1a73e8')
            .fontColor(this.curtainOpen ? '#999999' : '#ffffff')
            .fontSize(14)
            .borderRadius(20)
            .margin({ right: 10 })
            .onClick(() => {
              this.curtainOpen = true
            })

          Button('暂停')
            .width(90).height(40)
            .backgroundColor('#e0e0e0')
            .fontColor('#333333')
            .fontSize(14)
            .borderRadius(20)
            .margin({ right: 10 })

          Button('关闭')
            .width(90).height(40)
            .backgroundColor(this.curtainOpen ? '#ff4444' : '#e0e0e0')
            .fontColor(this.curtainOpen ? '#ffffff' : '#999999')
            .fontSize(14)
            .borderRadius(20)
            .onClick(() => {
              this.curtainOpen = false
            })
        }
      }
      .width('90%')
      .padding(20)
      .backgroundColor('#ffffff')
      .borderRadius(15)
      .margin({ bottom: 20 })

      // 窗纱控制
      Column() {
        Row() {
          Image($rawfile('curtain_icon_window_screening_left_part.png')).width(22).height(22)
          Text('窗纱').fontSize(18).fontWeight(FontWeight.Bold).margin({ left: 5 })
        }
        .width('100%')
        .margin({ bottom: 15 })

        Row() {
          Button('打开')
            .width(90).height(40)
            .backgroundColor(this.screenOpen ? '#e0e0e0' : '#1a73e8')
            .fontColor(this.screenOpen ? '#999999' : '#ffffff')
            .fontSize(14)
            .borderRadius(20)
            .margin({ right: 10 })
            .onClick(() => {
              this.screenOpen = true
            })

          Button('关闭')
            .width(90).height(40)
            .backgroundColor(this.screenOpen ? '#ff4444' : '#e0e0e0')
            .fontColor(this.screenOpen ? '#ffffff' : '#999999')
            .fontSize(14)
            .borderRadius(20)
            .onClick(() => {
              this.screenOpen = false
            })
        }
      }
      .width('90%')
      .padding(20)
      .backgroundColor('#ffffff')
      .borderRadius(15)
    }
    .width('100%')
    .height('100%')
    .alignItems(HorizontalAlign.Center)
    .backgroundImage($rawfile('bg_hotel_full.jpg'))
    .backgroundImageSize(ImageSize.Cover)
  }
}