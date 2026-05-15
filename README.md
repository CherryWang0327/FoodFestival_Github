# 🍱 FoodFest 2026 

> 一个基于 Java Web 的美食节管理系统。

---

## 🚀 项目简介
本项目旨在为 FoodFest 2026 活动提供在线注册、活动展示及后台数据管理功能。

## 🛠️ 技术栈
- **Frontend:** JSP, CSS, Font Awesome
- **Backend:** Java Servlet, JDBC
- **Environment:** JDK 17+, Tomcat 10+

---
## 使用指南
1. 克隆项目 (Clone)
组员不需要自己新建项目，直接导入：

在 Eclipse 中选择 File -> Import...。

选择 Git -> Projects from Git (with smart import) -> Clone URI。

输入仓库 URL 和自己的 GitHub 账号信息。

完成后，项目会自动出现在组员的 Workspace 中。

2. 协作常用操作
团队开发的核心逻辑是：先拉取（Pull），再提交（Commit），最后推送（Push）。

更新代码 (Pull)： 每天写代码前，右键项目 -> Team -> Pull。这会将队友上传的代码同步到你的本地。

上传更新 (Push)：

写完代码后，先 Commit 到本地仓库。

再次 Pull 以确保没有冲突。

如果没有冲突，右键项目 -> Team -> Push to Origin。
## 📂 项目结构
```text
FoodFestival/
├── css/
│   └── main.css              # 全局样式与自定义品牌字体设置 (jolin负责) 
├── js/
│   └── validation.js         # 表单前端验证逻辑 (喵喵负责)
├── WEB-INF/
│   ├── classes/              # 编译后的 Servlet 类文件 
│   └── web.xml               # Servlet 映射与 Web 配置 
├── home.jsp                  # 项目主页：展示美食节概览 (jolin负责滚动，页面设计，美观，对齐) (月盈负责四个活动都要设计好)
├── home_festival_module.jsp  # 点击explore festival 和导航栏 festivals 跳转主页商家界面 (月盈负责)
├── home_vendor_module.jsp    # 点击导航栏vendor跳转商家界面 (Cherry负责)
├── contact.jsp               # 点击导航栏进入contact页面 (Cherry负责)
├── details.jsp               # 活动详情页：单个活动的深入介绍 (月盈负责)
├── event_registration.jsp    # 注册页：游客信息登记表单 (喵喵负责)
├── user_registration.jsp     # 注册页：游客信息登记表单 (喵喵负责)
│                             # *备注：如果 UI 风格相似，可以让“喵喵”考虑是否能合并为一个通用模板，
│                             #  通过 Request 参数区分功能，减少冗余代码。
└── confirmation.jsp          # 确认页：展示服务器返回的登记结果 (jolin负责)
第二阶段：
jolin负责payment界面
增加数据库

## 📝 运行指南
将项目部署至 Tomcat 并运行。

---
Project by Team XYZ > Last Updated: 2026-05-15
