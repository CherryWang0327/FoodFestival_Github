# FoodFest 2026 

## 📂 Structure of the project in main/
java/
├── com/
│   └── FoodFest/
│       └── Servlet/
│           └── RegisterServlet.java
webapp/
├── css/
│   └── base.css               # 
│   └── component.css          # 
│   └── home.css               # 
│   └── layout.css             # 
│   └── pages.css              # 
│   └── responsive.css         # 
├── js/
│   └── validation.js         # 表单前端验证逻辑 (喵喵负责)
├── WEB-INF/
│   └── web.xml               # Servlet 映射与 Web 配置
├── assets/                     # 图片素材放置地，目前为空，替换图片素材存放地
│   └── images/ 
│       └── event/               
│       └── hero/
│       └── vendor/ 
├── includes/
│   └── footer.jsp            # 
│   └── header.jsp            # 
│   └── home.css              # 
│   └── layout.css            #                               
├── home.jsp                  # 项目主页：展示美食节概览 (jolin负责滚动，页面设计，美观，对齐) (月盈负责四个活动都要设计好)
├── home_festival_module.jsp  # 点击explore festival 和导航栏 festivals 跳转主页商家界面 (月盈负责)
├── home_vendor_module.jsp    # 点击导航栏vendor跳转商家界面 (Cherry负责)
├── contact.jsp               # 点击导航栏进入contact页面 (Cherry负责)
├── details.jsp               # 活动详情页：单个活动的深入介绍 (月盈负责)
├── event_registration.jsp    # 注册页：游客信息登记表单 (喵喵负责)
├── user_registration.jsp     # 注册页：游客信息登记表单 (喵喵负责)
└── confirmation.jsp          # 确认页：展示服务器返回的登记结果 (jolin负责)
