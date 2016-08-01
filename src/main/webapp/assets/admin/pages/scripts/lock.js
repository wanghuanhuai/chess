var Lock = function () {

    return {
        //main function to initiate the module
        init: function () {

             $.backstretch([
		        "<%=basePath%>/assets/admin/pages/media/bg/1.jpg",
    		    "<%=basePath%>/assets/admin/pages/media/bg/2.jpg",
    		    "<%=basePath%>/assets/admin/pages/media/bg/3.jpg",
    		    "<%=basePath%>/assets/admin/pages/media/bg/4.jpg"
		        ], {
		          fade: 1000,
		          duration: 8000
		      });
        }

    };

}();