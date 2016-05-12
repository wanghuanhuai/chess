var FormValidation = function () {

    $('#cancel-btn').click(function () {
        location.href = "/admin/cms/shopUser/listPage.do";
    });

    // basic validation
    var handleValidation1 = function() {
        // for more info visit the official plugin documentation: 
            // http://docs.jquery.com/Plugins/Validation

            var form1 = $('#form_sample_1');
            var error1 = $('.alert-danger', form1);
            var success1 = $('.alert-success', form1);


            form1.validate({
                errorElement: 'span', //default input error message container
                errorClass: 'help-block help-block-error', // default input error message class
                focusInvalid: false, // do not focus the last invalid input
                ignore: "",  // validate all fields including form hidden input
                rules: {
                    loginName: {
                        minlength: 4,
                        required: true,
                    },
                    password:{
                        required: true
                    },
                    email: {
                        required: true,
                        email: true,
                    },
                    fullname: {
                        required: true,
                    },
                    address:{
                        required: true,
                    },
                    isActive: {
                        required: true
                    },

                },
                messages: { // custom messages for radio buttons and checkboxes
                    'loginName': {
                        required: "用户名不能为空！",
                        minlength: "不能少于4位！"
                    },
                    password: {
                        required: "密码不能为空！"
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
                    isActive: {
                        required: "激活状态必须选择！"
                    }
                },

                invalidHandler: function (event, validator) { //display error alert on form submit              
                    success1.hide();
                    error1.show();
                    Metronic.scrollTo(error1, -200);
                },

                highlight: function (element) { // hightlight error inputs
                    $(element)
                        .closest('.form-group').addClass('has-error'); // set error class to the control group
                },

                unhighlight: function (element) { // revert the change done by hightlight
                    $(element)
                        .closest('.form-group').removeClass('has-error'); // set error class to the control group
                },

                success: function (label) {
                    label
                        .closest('.form-group').removeClass('has-error'); // set success class to the control group
                },

                submitHandler: function (form) {
                    form.submit();
                }
            });


    }



    return {
        //main function to initiate the module
        init: function () {

            handleValidation1();


        }

    };

}();