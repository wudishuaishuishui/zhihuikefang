import router from '@ohos.router'

@Entry
@Component
struct LightPage {
  @State bedLightOn: boolean = true
  @State deskLightOn: boolean = false
  @State ambientLightOn: boolean = false
  @State spotLightOn: boolean = true
  @State floorLightOn: boolean = false
  @State allLightOn: boolean = true
  build() {
    Column() {  // 返回按钮
      Row() {
        Image($rawfile('light_icon_back.png')).width(20).height(20)
        Text('返回').fontSize(18).fontColor('#1a73e8').margin({ left: 5 })
      }
      .width('90%')
      .padding({ top: 10, bottom: 10 })
      .margin({ top: 20, bottom: 10 })
      .onClick(() => {
        router.back()
      })

      // 顶部总开关
      Column() {
        Image($rawfile('light_btn_main_switch.png')).width(64).height(64)
        Text('灯光控制')
          .fontSize(16)
          .fontColor('#1a73e8')
          .margin({ top: 5 })
        Text(this.allLightOn ? '已开启' : '已关闭')
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
          .fontColor(this.allLightOn ? '#1a73e8' : '#888888')
          .margin({ top: 5 })
      }
      .width('100%')
      .padding({ top: 30, bottom: 20 })
      .alignItems(HorizontalAlign.Center)
      .onClick(() => {
        this.allLightOn = !this.allLightOn
      })

      // 场景模式
      Text('场景模式')
        .fontSize(16)
        .fontWeight(FontWeight.Bold)
        .fontColor('#1a73e8')
        .width('90%')
        .margin({ bottom: 15 })

      Row() {
        Column() {
          Image($rawfile('light_icon_read_mode.png')).width(28).height(28)
          Text('阅读').fontSize(13).fontColor('#1a73e8').margin({ top: 5 })
        }
        .width(70).height(70)
        .backgroundColor('#ffffff')
        .borderRadius(15)
        .justifyContent(FlexAlign.Center)
        .alignItems(HorizontalAlign.Center)
        .margin({ right: 10 })
        .onClick(() => {
          this.bedLightOn = false
          this.deskLightOn = true
          this.ambientLightOn = false
          this.spotLightOn = true
          this.floorLightOn = false
          this.allLightOn = true
        })

        Column() {
          Image($rawfile('light_icon_sleep_mode.png')).width(28).height(28)
          Text('睡眠').fontSize(13).fontColor('#1a73e8').margin({ top: 5 })
        }
        .width(70).height(70)
        .backgroundColor('#ffffff')
        .borderRadius(15)
        .justifyContent(FlexAlign.Center)
        .alignItems(HorizontalAlign.Center)
        .margin({ right: 10 })
        .onClick(() => {
          this.bedLightOn = false
          this.deskLightOn = false
          this.ambientLightOn = false
          this.spotLightOn = false
          this.floorLightOn = false
          this.allLightOn = false
        })

        Column() {
          Image($rawfile('light_icon_bright_mode.png')).width(28).height(28)
          Text('观影').fontSize(13).fontColor('#1a73e8').margin({ top: 5 })
        }
        .width(70).height(70)
        .backgroundColor('#ffffff')
        .borderRadius(15)
        .justifyContent(FlexAlign.Center)
        .alignItems(HorizontalAlign.Center)
        .margin({ right: 10 })
        .onClick(() => {
          this.bedLightOn = false
          this.deskLightOn = false
          this.ambientLightOn = true
          this.spotLightOn = false
          this.floorLightOn = false
          this.allLightOn = true
        })

        Column() {
          Image($rawfile('light_icon_warm_mode.png')).width(28).height(28)
          Text('夜灯').fontSize(13).fontColor('#1a73e8').margin({ top: 5 })
        }
        .width(70).height(70)
        .backgroundColor('#ffffff')
        .borderRadius(15)
        .justifyContent(FlexAlign.Center)
        .alignItems(HorizontalAlign.Center)
        .onClick(() => {
          this.bedLightOn = true
          this.deskLightOn = false
          this.ambientLightOn = false
          this.spotLightOn = false
          this.floorLightOn = false
          this.allLightOn = true
        })
      }
      .width('90%')
      .margin({ bottom: 25 })

      // 独立控制
      Text('独立控制')
        .fontSize(16)
        .fontWeight(FontWeight.Bold)
        .fontColor('#1a73e8')
        .width('90%')
        .margin({ bottom: 15 })

      // 床头灯
      Row() {
        Image($rawfile('light_icon_bar_lamp.png')).width(20).height(20)
        Text('床头灯').fontSize(15).fontColor('#1a73e8').margin({ left: 5 })
        Text(this.bedLightOn ? '已开启' : '已关闭')
          .fontSize(13)
          .fontColor(this.bedLightOn ? '#1a73e8' : '#888888')
          .margin({ left: 10 })
        Blank()
        Image(this.bedLightOn ? $rawfile('light_toggle_on.png') : $rawfile('light_toggle_off.png'))
          .width(60).height(36)
      }
      .width('90%')
      .padding({ top: 12, bottom: 12 })
      .onClick(() => {
        this.bedLightOn = !this.bedLightOn
      })

      // 台灯
      Row() {
        Image($rawfile('light_icon_right_left_desk_read.png')).width(20).height(20)
        Text('台灯').fontSize(15).fontColor('#1a73e8').margin({ left: 5 })
        Text(this.deskLightOn ? '已开启' : '已关闭')
          .fontSize(13)
          .fontColor(this.deskLightOn ? '#1a73e8' : '#888888')
          .margin({ left: 10 })
        Blank()
        Image(this.deskLightOn ? $rawfile('light_toggle_on.png') : $rawfile('light_toggle_off.png'))
          .width(60).height(36)
      }
      .width('90%')
      .padding({ top: 12, bottom: 12 })
      .onClick(() => {
        this.deskLightOn = !this.deskLightOn
      })

      // 氛围灯
      Row() {
        Image($rawfile('light_icon_soft.png')).width(20).height(20)
        Text('氛围灯').fontSize(15).fontColor('#1a73e8').margin({ left: 5 })
        Text(this.ambientLightOn ? '已开启' : '已关闭')
          .fontSize(13)
          .fontColor(this.ambientLightOn ? '#1a73e8' : '#888888')
          .margin({ left: 10 })
        Blank()
        Image(this.ambientLightOn ? $rawfile('light_toggle_on.png') : $rawfile('light_toggle_off.png'))
          .width(60).height(36)
      }
      .width('90%')
      .padding({ top: 12, bottom: 12 })
      .onClick(() => {
        this.ambientLightOn = !this.ambientLightOn
      })

      // 射灯
      Row() {
        Image($rawfile('light_icon_corrid_lights.png')).width(20).height(20)
        Text('射灯').fontSize(15).fontColor('#1a73e8').margin({ left: 5 })
        Text(this.spotLightOn ? '已开启' : '已关闭')
          .fontSize(13)
          .fontColor(this.spotLightOn ? '#1a73e8' : '#888888')
          .margin({ left: 10 })
        Blank()
        Image(this.spotLightOn ? $rawfile('light_toggle_on.png') : $rawfile('light_toggle_off.png'))
          .width(60).height(36)
      }
      .width('90%')
      .padding({ top: 12, bottom: 12 })
      .onClick(() => {
        this.spotLightOn = !this.spotLightOn
      })

      // 落地灯
      Row() {
        Image($rawfile('light_icon_wardrobe.png')).width(20).height(20)
        Text('落地灯').fontSize(15).fontColor('#1a73e8').margin({ left: 5 })
        Text(this.floorLightOn ? '已开启' : '已关闭')
          .fontSize(13)
          .fontColor(this.floorLightOn ? '#1a73e8' : '#888888')
          .margin({ left: 10 })
        Blank()
        Image(this.floorLightOn ? $rawfile('light_toggle_on.png') : $rawfile('light_toggle_off.png'))
          .width(60).height(36)
      }
      .width('90%')
      .padding({ top: 12, bottom: 12 })
      .onClick(() => {
        this.floorLightOn = !this.floorLightOn
      })
    }
    .width('100%')
    .height('100%')
    .alignItems(HorizontalAlign.Center)
    .backgroundImage($rawfile('bg_hotel_full.jpg'))
    .backgroundImageSize(ImageSize.Cover)
  }
}