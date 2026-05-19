<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Contact Us | Coding Club XMUM</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body class="bg-gray-50">

    <!-- 引入导航栏 -->
    <%@ include file="includes/header.jsp" %>

    <main class="container mx-auto px-6 py-16">
        <div class="max-w-5xl mx-auto flex flex-col md:flex-row gap-12">
            
            <!-- 左侧：表单（改为橘色风格） -->
			<div class="md:w-2/3 bg-white p-8 rounded-2xl shadow-lg">
			    <h2 class="text-2xl font-bold mb-6 text-gray-800">Send us a Message</h2>
			    <form action="ContactServlet" method="POST">
			        <!-- 注意：ring-orange-500 保持统一 -->
			        <div class="mb-4">
			            <label class="block text-sm font-bold mb-2">Name</label>
			            <input type="text" name="name" class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-orange-500 outline-none">
			        </div>
			        <div class="mb-4">
			            <label class="block text-sm font-bold mb-2">Email</label>
			            <input type="email" name="email" class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-orange-500 outline-none">
			        </div>
			        <div class="mb-6">
			            <label class="block text-sm font-bold mb-2">Message</label>
			            <textarea name="message" rows="4" class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-orange-500 outline-none"></textarea>
			        </div>
			        <!-- 橘色按钮 -->
			        <button type="submit" class="w-full bg-orange-500 hover:bg-orange-600 text-white font-bold py-3 rounded-xl transition-all shadow-lg">
			            Submit Message
			        </button>
			    </form>
			</div>

            <!-- 右侧：直接联系方式 -->
            <div class="md:w-1/3 space-y-6">
                <div class="bg-white p-6 rounded-2xl shadow-lg">
                    <h3 class="font-bold mb-4">Direct Contact</h3>
                    <a href="https://wa.me/601xxxxxxxxx" target="_blank" class="flex items-center space-x-3 text-green-600 hover:text-green-700 mb-4">
                        <i class="fab fa-whatsapp text-2xl"></i>
                        <span>Chat on WhatsApp</span>
                    </a>
                    <a href="mailto:contact@xmum.edu.my" class="flex items-center space-x-3 text-blue-600 hover:text-blue-700">
                        <i class="fas fa-envelope text-2xl"></i>
                        <span>Email Us</span>
                    </a>
                </div>
            </div>
        </div>
    </main>

</body>
</html>

<%-- 5. 引入页脚 (包含版权信息和 JS 引用) --%>
<%@ include file="includes/footer.jsp" %>