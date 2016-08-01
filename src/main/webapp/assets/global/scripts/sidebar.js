/**
 * Created by fi25 on 15-9-9.
 */
$(function() {

    var Index = (function() {
        var me = {};

        // 处理一级菜单点击
        me.handleMenuClick = function() {
            $('#page-sidebar-menu > li').click(function(e) {
                var menu = $('#page-sidebar-menu');
                var li = menu.find('li.active').removeClass('active');

                // 添加选中 打开的样式
                $(this).addClass('active');
            });
        };

        // 处理子菜单点击
        me.handleSubMenuClick = function() {
            $('#page-sidebar-menu li a').click(function(e) {
                e.preventDefault();
                var url = this.href;
                if (url != null && url != 'javascript:;') {
                  //  $("#functionPage").attr("src",url);
                  //  window.location.href=url;
                 htmlobj=$.ajax({url:url,async:false});

                    $("#myDiv").html(htmlobj.responseText);

                    jQuery(document).ready(function() {
                        Metronic.init(); // init metronic core components
                        Layout.init(); // init current layout
                        Demo.init(); // init demo features
                        TableEditable.init();
                    });
                }
            });
        };

        me.init = function() {
            me.handleMenuClick();
            me.handleSubMenuClick();
        };

        return me;
    })();

    Index.init();

    $('#btn-dashboard').trigger("click");
});