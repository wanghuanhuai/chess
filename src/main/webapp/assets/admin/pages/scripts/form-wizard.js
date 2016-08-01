var FormWizard = function () {
    $.ajaxSetup({
        async : false
    });
    jQuery.validator.addMethod("check_username", function(value) {
        var flag = true;
        var username = value;
        if(username!=''){
            var changeUrl = "/admin/cms/shopUser/checkShopUser.do?username="+username;
            $.get(changeUrl,function(data){
                if(data.flag == '1'){
                    flag =  false;
                }else{
                    flag = true;
                }
            })
        }
        return flag;
    }, '用户名已经存在!');

    jQuery.validator.addMethod("check_email", function(value) {
        var flag = true;
        var email = value;
        if(email!=''){
            var changeUrl = "/admin/cms/shopUser/checkEmail.do?email="+email;
            $.get(changeUrl,function(data){
                if(data.flag == '1'){
                    flag =  false;
                }else{
                    flag = true;
                }
            })
        }
        return flag;
    }, '邮箱已经被注册!');



    return {
        //main function to initiate the module
        init: function () {
            if (!jQuery().bootstrapWizard) {
                return;
            }

            function format(state) {
                if (!state.id) return state.text; // optgroup
                return "<img class='flag' src='/assets/global/img/flags/" + state.id.toLowerCase() + ".png'/>&nbsp;&nbsp;" + state.text;
            }

            $("#country_list").select2({
                placeholder: "请选择........",
                allowClear: true,
                formatResult: format,
                formatSelection: format,
                escapeMarkup: function (m) {
                    return m;
                }
            });

            var form = $('#submit_form');
            var error = $('.alert-danger', form);
            var success = $('.alert-success', form);

            form.validate({
                doNotHideMessage: true, //this option enables to show the error/success messages on tab switch.
                errorElement: 'span', //default input error message container
                errorClass: 'help-block help-block-error', // default input error message class
                focusInvalid: false, // do not focus the last invalid input
                rules: {
                    //account
                    username: {
                        minlength: 4,
                        required: true,
                        check_username:true
                    },
                    password: {
                        minlength: 1,
                        required: true
                    },
                    rpassword: {
                        minlength: 1,
                        required: true,
                        equalTo: "#submit_form_password"
                    },
                    //profile
                    fullname: {
                        required: true
                    },
                    email: {
                        required: true,
                        email: true,
                        check_email:true
                    },
                    country: {
                        required: true
                    }
                    //payment

                },

                messages: { // custom messages for radio buttons and checkboxes
                    'username': {
                        required: "用户名不能为空！",
                        minlength: "不能少于4位！"
                    },
                    password: {
                        minlength: "密码不能少于1位！",
                        required: "密码不能为空！"
                    },
                    rpassword: {
                        minlength: "重复密码不能少于1位！",
                        required: "重复密码不能为空！",
                        equalTo: "2次密码输入不一致！"
                    },
                    fullname: {
                        required: "客户名称不能为空！"
                    },
                    email: {
                        required: "邮箱不能为空！",
                        email: "邮箱格式不正确！"
                    },
                    address: {
                        required: "客户地址不能为空！"
                    },
                    country: {
                        required: "国家不能为空！"
                    }
                },



                errorPlacement: function (error, element) { // render error placement for each input type
                    if (element.attr("name") == "gender") { // for uniform radio buttons, insert the after the given container
                        error.insertAfter("#form_gender_error");
                    } else if (element.attr("name") == "payment[]") { // for uniform checkboxes, insert the after the given container
                        error.insertAfter("#form_payment_error");
                    } else {
                        error.insertAfter(element); // for other inputs, just perform default behavior
                    }
                },

                invalidHandler: function (event, validator) { //display error alert on form submit   
                    success.hide();
                    error.show();
                    Metronic.scrollTo(error, -200);
                },

                highlight: function (element) { // hightlight error inputs
                    $(element)
                        .closest('.form-group').removeClass('has-success').addClass('has-error'); // set error class to the control group
                },

                unhighlight: function (element) { // revert the change done by hightlight
                    $(element)
                        .closest('.form-group').removeClass('has-error'); // set error class to the control group
                },

                success: function (label) {
                    if (label.attr("for") == "gender" || label.attr("for") == "payment[]") { // for checkboxes and radio buttons, no need to show OK icon
                        label
                            .closest('.form-group').removeClass('has-error').addClass('has-success');
                        label.remove(); // remove error label here

                    } else { // display success icon for other inputs
                        label
                            .addClass('valid') // mark the current input as valid and display OK icon
                        .closest('.form-group').removeClass('has-error').addClass('has-success'); // set success class to the control group
                    }

                },

                submitHandler: function (form) {
                    form.submit();
                    success.show();
                    error.hide();
                    //add here some ajax code to submit your form or just call form.submit() if you want to submit the form without ajax
                }

            });



            var displayConfirm = function() {
                $('#tab4 .form-control-static', form).each(function(){
                    var input = $('[name="'+$(this).attr("data-display")+'"]', form);
                    if (input.is(":radio")) {
                        input = $('[name="'+$(this).attr("data-display")+'"]:checked', form);
                    }
                    if (input.is(":text") || input.is("textarea")) {
                        $(this).html(input.val());
                    } else if (input.is("select")) {
                        $(this).html(input.find('option:selected').text());
                    }
                });
            };

            var handleTitle = function(tab, navigation, index) {
                var total = navigation.find('li').length;
                var current = index + 1;
                // set wizard title
                $('.step-title', $('#form_wizard_1')).text('Step ' + (index + 1) + ' of ' + total);
                // set done steps
                jQuery('li', $('#form_wizard_1')).removeClass("done");
                var li_list = navigation.find('li');
                for (var i = 0; i < index; i++) {
                    jQuery(li_list[i]).addClass("done");
                }

                if (current == 1) {
                    $('#form_wizard_1').find('.button-previous').hide();
                } else {
                    $('#form_wizard_1').find('.button-previous').show();
                }

                if (current >= total) {
                    $('#form_wizard_1').find('.button-next').hide();
                    $('#form_wizard_1').find('.button-submit').show();
                    displayConfirm();
                } else {
                    $('#form_wizard_1').find('.button-next').show();
                    $('#form_wizard_1').find('.button-submit').hide();
                }
                Metronic.scrollTo($('.page-title'));
            };

            // default form wizard
            $('#form_wizard_1').bootstrapWizard({
                'nextSelector': '.button-next',
                'previousSelector': '.button-previous',
                onTabClick: function (tab, navigation, index, clickedIndex) {
                    return false;
                    /*
                    success.hide();
                    error.hide();
                    if (form.valid() == false) {
                        return false;
                    }
                    handleTitle(tab, navigation, clickedIndex);
                    */
                },
                onNext: function (tab, navigation, index) {
                    success.hide();
                    error.hide();

                    if (form.valid() == false) {
                        return false;
                    }

                    handleTitle(tab, navigation, index);
                },
                onPrevious: function (tab, navigation, index) {
                    success.hide();
                    error.hide();

                    handleTitle(tab, navigation, index);
                },
                onTabShow: function (tab, navigation, index) {
                    var total = navigation.find('li').length;
                    var current = index + 1;
                    var $percent = (current / total) * 100;
                    $('#form_wizard_1').find('.progress-bar').css({
                        width: $percent + '%'
                    });
                }
            });

            $('#form_wizard_1').find('.button-previous').hide();
            //$('#form_wizard_1 .button-submit').hide();
            $('#form_wizard_1 .button-submit').click(function () {
                success.show();
                error.hide();
                //alert('Finished! Hope you like it :)');
                $('.form-horizontal').submit();
            }).hide();


            //apply validation on select2 dropdown value change, this only needed for chosen dropdown integration.
            //$('#country_list', form).change(function () {
            //    form.validate().element($(this)); //revalidate the chosen dropdown value and show error or success message for the input
            //});
        }

    };

}();