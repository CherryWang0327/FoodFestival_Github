# FoodFest 2026 

## 📂 Structure of the project in main/
java/
├── com/
│   └── FoodFest/
│       └── Servlet/
│           └── RegisterServlet.java # This Servlet receives the user-submitted registration data, encapsulates it into the request scope, and forwards it to confirmation.jsp for display.
webapp/
├── css/
│   └── base.css                     # Global font imports, hard reset, body defaults, and shared utility  classes (links, lists, brand font)
│   └── component.css                # Reusable UI components shared across pages (e.g. .btn-outline-orange)
│   └── home.css                     # Hero section, upcoming festivals grid with cards and badges, featured vendors section
│   └── layout.css                   # Sticky header with navigation bar, and site-wide footer
│   └── pages.css                    # Page-specific styles: event details, contact form, visitor registration, and confirmation ticket
│   └── responsive.css               # All breakpoint-based media queries managed centrally 
├── js/
│   └── validation.js                # 
├── WEB-INF/
│   └── web.xml                      # 
├── assets/                     
│   └── images/ 
│       └── event/                   # Stores festival/event images used in the website
│       └── hero/                    # Stores homepage hero banner images
│       └── vendor/                  # vendor page inserted images
├── includes/
│   └── footer.jsp                   # website footer of every page showing "© 2026 PE2 Group 2 - Team 6. All Rights Reserved." 
│   └── header.jsp                   # website header of every page showing website logo, name and navigating to other pages                           
├── home.jsp                         # Main entry page that combines and displays homepage sections
├── home_festival_module.jsp         # Displays featured festivals on the homepage
├── home_vendor_module.jsp           # vendor page showing vendors cooperate with FoodFest2026 (statically show) 
├── contact.jsp                      # contact page allowing users to submit inquiries directly and provides quick navigation and links to contact via Email and WhatsApp (statically show)
├── details.jsp                      # Shows detailed information for a selected festival event
├── event_registration.jsp           # 
├── user_registration.jsp            # 
└── confirmation.jsp                 # confirmation page displaying the registration success status and a summary of the user's submitted information
