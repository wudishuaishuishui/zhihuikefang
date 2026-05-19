# 智慧客房

基于 HarmonyOS 的智能酒店客房控制 App，支持空调、灯光、窗帘等设备的远程控制。

## 功能

- **登录** — 房号 + 用户名认证
- **空调控制** — 温度调节、模式切换（制冷/制热/送风/除湿）
- **灯光控制** — 场景模式（阅读/睡眠/观影/夜灯）、独立灯光开关
- **窗帘控制** — 布帘/窗纱 打开/关闭/暂停
- **客房服务** — 请勿打扰、打扫、退房、SOS 等

## 技术栈

- **平台**: HarmonyOS 6.0.2 (API 22)
- **开发工具**: DevEco Studio
- **语言**: ArkTS
- **架构模式**: MVVM
- **网络请求**: @ohos.net.http
- **数据存储**: @ohos.data.preferences

## 项目结构

```
├── AppScope/              # 应用全局配置
├── entry/src/main/
│   ├── ets/
│   │   ├── api/           # API 服务层
│   │   ├── common/        # 工具类 (Token 存储等)
│   │   ├── entryability/  # 应用入口
│   │   └── pages/         # 页面
│   │       ├── Index.ets       # 登录页
│   │       ├── HomePage.ets    # 首页 (空调控制)
│   │       ├── LightPage.ets   # 灯光控制
│   │       ├── CurtainPage.ets # 窗帘控制
│   │       └── ServicePage.ets # 客房服务
│   └── resources/
│       └── rawfile/       # 图片资源
├── build-profile.json5    # 构建配置
└── oh-package.json5       # 依赖管理
```

## 接口文档

详见 [智慧客房接口文档](智慧客房接口文档.md)

## 构建运行

1. 使用 DevEco Studio 打开项目
2. 连接 HarmonyOS 设备或启动模拟器
3. 点击 Run 运行

## 开发状态

- [x] 登录页 UI
- [x] 空调控制 UI
- [x] 灯光控制 UI
- [x] 窗帘控制 UI
- [x] 客房服务 UI
- [ ] API 接口接入
