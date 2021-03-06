var EcommerceProductsEdit = function () {

    var handleImages = function() {

        // see http://www.plupload.com/
        var uploader = new plupload.Uploader({
            runtimes : 'html5,flash,silverlight,html4',
             
            browse_button : document.getElementById('tab_images_uploader_pickfiles'), // you can pass in id...
            container: document.getElementById('tab_images_uploader_container'), // ... or DOM Element itself
             
            url : "upload.do",
             
            filters : {
                max_file_size : '50mb',
                mime_types: [
                    {title : "Image files", extensions : "jpg,gif,png"},
                    {title : "Zip files", extensions : "zip"}
                ]
            },
         
            // Flash settings
            flash_swf_url : '<%=basePath%>/assets/global/plugins/plupload/js/Moxie.swf',
     
            // Silverlight settings
            silverlight_xap_url : '<%=basePath%>/assets/plugins/plupload/js/Moxie.xap',
         
            init: {
                PostInit: function() {
                    $('#tab_images_uploader_filelist').html("");
         
                    $('#tab_images_uploader_uploadfiles').click(function() {
                        uploader.start();
                        return false;
                    });

                    $('#tab_images_uploader_filelist').on('click', '.added-files .remove', function(){
                        uploader.removeFile($(this).parent('.added-files').attr("id"));    
                        $(this).parent('.added-files').remove();                     
                    });
                },
         
                FilesAdded: function(up, files) {
                    plupload.each(files, function(file) {
                        $('#tab_images_uploader_filelist').append('<div class="alert alert-warning added-files" id="uploaded_file_' + file.id + '">' + file.name + '(' + plupload.formatSize(file.size) + ') <span class="status label label-info"></span>&nbsp;<a href="javascript:;" style="margin-top:-5px" class="remove pull-right btn btn-sm red"><i class="fa fa-times"></i> 移除</a></div>');
                    });
                },
         
                UploadProgress: function(up, file) {
                    $('#uploaded_file_' + file.id + ' > .status').html(file.percent + '%');
                },

                FileUploaded: function(up, file, response) {
                    var response = $.parseJSON(response.response);

                    if (response.result && response.result == 'OK') {
                        var id = response.id; // uploaded file's unique name. Here you can collect uploaded file names and submit an jax request to your server side script to process the uploaded files and update the images tabke
                        var location = response.location;
                        $('#image-table').append(' <tr> '+
                          '<td>'  +
                            ' <a href="'+location+'" class="fancybox-button" data-rel="fancybox-button"> '  +
                        '  <img class="img-responsive" src="'+location+'" alt=""> '  +
                         '  <input type="hidden" class="form-control" name="imageInfos['+id+'].id" value="'+id+'"> '  +
                        '   </a> '  +
                        '   </td> '  +
                        '   <td> '  +
                        '   <input type="text" class="form-control" name="imageInfos['+id+'].imageName" value="新图片'+id+'"> '  +
                        '   </td> '  +
                        '   <td>'  +
                        '   <input type="text" class="form-control" name="imageInfos['+id+'].imageSort" value="0"> '  +
                        '   </td> '  +
                        '   <td> '  +
                        '    <label> '  +
                        '   <input type="radio" name="imageInfos['+id+'].imageType" value="1" > '  +
                        ' </label> '  +
                        ' </td> '  +
                        ' <td> '  +
                        ' <label> '  +
                        ' <input type="radio" name="imageInfos['+id+'].imageType" value="2"> '  +
                        '  </label> '  +
                        '   </td> '  +
                        '   <td> '  +
                        '   <label> '  +
                        '   <input type="radio" name="imageInfos['+id+'].imageType" value="3"> '  +
                        '   </label> '  +
                        '   </td> '  +
                        '   <td> '  +
                        '   <a href="javascript:;" onclick="deleteTr(this)" class="btn default btn-sm" > '  +
                        '   <i class="fa fa-times"></i> 移除 </a> '  +
                        ' </td> '  +
                        '  </tr>');
                        $('#uploaded_file_' + file.id + ' > .status').removeClass("label-info").addClass("label-success").html('<i class="fa fa-check"></i> 上传成功'); // set successfull upload
                    } else {
                        $('#uploaded_file_' + file.id + ' > .status').removeClass("label-info").addClass("label-danger").html('<i class="fa fa-warning"></i> 失败'); // set failed upload
                        Metronic.alert({type: 'danger', message: '一个上传失败。请重试。', closeInSeconds: 10, icon: 'warning'});
                    }
                },
         
                Error: function(up, err) {
                    Metronic.alert({type: 'danger', message: err.message, closeInSeconds: 10, icon: 'warning'});
                }
            }
        });

        uploader.init();

    };



    var handleHistory = function () {

        var grid = new Datatable();

        grid.init({
            src: $("#datatable_history"),
            onSuccess: function (grid) {
                // execute some code after table records loaded
            },
            onError: function (grid) {
                // execute some code on network or other general error
            },
            loadingMessage: 'Loading...',
            dataTable: { // here you can define a typical datatable settings from http://datatables.net/usage/options
                "lengthMenu": [
                    [10, 20, 50, 100, 150, -1],
                    [10, 20, 50, 100, 150, "All"] // change per page values here
                ],
                "pageLength": 10, // default record count per page
                "ajax": {
                    "url": "/demo/ecommerce_product_history.php", // ajax source
                },
                "columnDefs": [{ // define columns sorting options(by default all columns are sortable extept the first checkbox column)
                    'orderable': true,
                    'targets': [0]
                }],
                "order": [
                    [0, "asc"]
                ] // set first column as a default sort by asc
            }
        });
    };

    var initComponents = function () {
        //init datepickers
        $('.date-picker').datepicker({
            rtl: Metronic.isRTL(),
            autoclose: true
        });

        ////init datetimepickers
        //$(".datetime-picker").datetimepicker({
        //    isRTL: Metronic.isRTL(),
        //    autoclose: true,
        //    todayBtn: true,
        //    pickerPosition: (Metronic.isRTL() ? "bottom-right" : "bottom-left"),
        //    minuteStep: 10
        //});

        //init maxlength handler
        $('.maxlength-handler').maxlength({
            limitReachedClass: "label label-danger",
            alwaysShow: true,
            threshold: 5
        });
    };

    return {

        //main function to initiate the module
        init: function () {
            initComponents();

            handleImages();
            handleHistory();
        }

    };

}();