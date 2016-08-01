var TableEditable = function () {

    var handleTable = function () {

        function restoreRow(oTable, nRow) {
            var aData = oTable.fnGetData(nRow);
            var jqTds = $('>td', nRow);

            for (var i = 0, iLen = jqTds.length; i < iLen; i++) {
                oTable.fnUpdate(aData[i], nRow, i, false);
            }

            oTable.fnDraw();
        }

        function editRow(oTable, nRow) {
            var aData = oTable.fnGetData(nRow);
            var jqTds = $('>td', nRow);
            jqTds[0].innerHTML = aData[0] ;
            jqTds[1].innerHTML = '<input type="text" class="form-control input-small" value="' + aData[1] + '">';
            jqTds[2].innerHTML =  aData[2];
            jqTds[3].innerHTML =  aData[3];
            jqTds[4].innerHTML =  aData[4];
            jqTds[5].innerHTML = '<a class="edit" href="">保存</a>';
            jqTds[6].innerHTML = '<a class="cancel" href="">取消</a>';
        }

        function saveRow(oTable, nRow) {
            var jqInputs = $('input', nRow);
            oTable.fnUpdate(jqInputs[0].value, nRow, 0, false);
            oTable.fnUpdate(jqInputs[1].value, nRow, 1, false);
            oTable.fnUpdate(jqInputs[2].value, nRow, 2, false);
            oTable.fnUpdate(jqInputs[3].value, nRow, 3, false);
            oTable.fnUpdate(jqInputs[4].value, nRow, 4, false);
            oTable.fnUpdate('<a class="edit" href="">编辑</a>', nRow, 5, false);
            oTable.fnUpdate('<a class="delete" href="">删除</a>', nRow, 6, false);
            oTable.fnDraw();
        }

        function cancelEditRow(oTable, nRow) {
            var jqInputs = $('input', nRow);
            oTable.fnUpdate(jqInputs[0].value, nRow, 0, false);
            oTable.fnUpdate(jqInputs[1].value, nRow, 1, false);
            oTable.fnUpdate(jqInputs[2].value, nRow, 2, false);
            oTable.fnUpdate(jqInputs[3].value, nRow, 3, false);
            oTable.fnUpdate(jqInputs[4].value, nRow, 4, false);
            oTable.fnUpdate('<a class="edit" href="">编辑</a>', nRow, 5, false);
            oTable.fnDraw();
        }

        var table = $('#sample_editable_1');

        var oTable = table.dataTable({

            // Uncomment below line("dom" parameter) to fix the dropdown overflow issue in the datatable cells. The default datatable layout
            // setup uses scrollable div(table-scrollable) with overflow:auto to enable vertical scroll(see: assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js). 
            // So when dropdowns used the scrollable div should be removed. 
            //"dom": "<'row'<'col-md-6 col-sm-12'l><'col-md-6 col-sm-12'f>r>t<'row'<'col-md-5 col-sm-12'i><'col-md-7 col-sm-12'p>>",

            "lengthMenu": [
                [5, 10, 20, -1],
                [5, 10, 20, "All"] // change per page values here
            ],

            // Or you can use remote translation file
            //"language": {
            //   url: '//cdn.datatables.net/plug-ins/3cfcc339e89/i18n/Portuguese.json'
            //},

            // set the initial value
            "pageLength": 10,

            "language": {
                "lengthMenu": " _MENU_ records"
            },
            "columnDefs": [{ // set default column settings
                'orderable': true,
                'targets': [0]
            }, {
                "searchable": true,
                "targets": [0]
            }],
            "order": [
                [0, "asc"]
            ] // set first column as a default sort by asc
        });

        var tableWrapper = $("#sample_editable_1_wrapper");

        tableWrapper.find(".dataTables_length select").select2({
            showSearchInput: false //hide search box with special css class
        }); // initialize select2 dropdown

        var nEditing = null;
        var nNew = false;

        $('#sample_editable_1_new').click(function (e) {
            //e.preventDefault();
            //
            //if (nNew && nEditing) {
            //    if (confirm("上行未保存,你是否想保存它 ?")) {
            //        saveRow(oTable, nEditing); // save
            //        //$(nEditing).find("td:first").html("未定义");
            //        nEditing = null;
            //        nNew = false;
            //
            //    } else {
            //        oTable.fnDeleteRow(nEditing); // cancel
            //        nEditing = null;
            //        nNew = false;
            //
            //        return;
            //    }
            //}
            //
            //var aiNew = oTable.fnAddData(['', '', '', '', '', '','']);
            //var nRow = oTable.fnGetNodes(aiNew[0]);
            //editRow(oTable, nRow);
            //nEditing = nRow;
            //nNew = true;

            location.href = "/admin/cms/shopUser/create.do";//location.href实现客户端页面的跳转
        });

        table.on('click', '.delete', function (e) {
            e.preventDefault();

            if (confirm("确定删除此行 ?") == false) {
                return;
            }

            var nRow = $(this).parents('tr')[0];
            var aData = oTable.fnGetData(nRow);
            var id = aData[0] ;

            var params = {id:id};
            url = '/admin/cms/product/delete.do';
            $.post(url,params,function(data){
             var o = eval(data);
             if(o.flag == 'Y'){
                oTable.fnDeleteRow(nRow);
             }else{
                 alert("删除失败");
             }
            });






        });

        table.on('click', '.cancel', function (e) {
            e.preventDefault();
            if (nNew) {
                oTable.fnDeleteRow(nEditing);
                nEditing = null;
                nNew = false;
            } else {
                restoreRow(oTable, nEditing);
                nEditing = null;
            }
        });

        //table.on('click', '.edit', function (e) {
        //    e.preventDefault();
        //
        //
        //    /* Get the row as a parent of the link that was clicked on */
        //    var nRow = $(this).parents('tr')[0];
        //    nEditing = nRow
        //    var id=$(nEditing).find("td:first").valueOf;
        //
        //    location.href = "create.do?id="+id;//location.href实现客户端页面的跳转
        //
        //    //if (nEditing !== null && nEditing != nRow) {
        //    //    /* Currently editing - but not this row - restore the old before continuing to edit mode */
        //    //    restoreRow(oTable, nEditing);
        //    //    editRow(oTable, nRow);
        //    //    nEditing = nRow;
        //    //} else if (nEditing == nRow && this.innerHTML == "保存") {
        //    //    /* Editing this row and want to save it */
        //    //    saveRow(oTable, nEditing);
        //    //    nEditing = null;
        //    //    alert("Updated! Do not forget to do some ajax to sync with backend :)");
        //    //} else {
        //    //    /* No edit in progress - let's start one */
        //    //    editRow(oTable, nRow);
        //    //    nEditing = nRow;
        //    //}
        //});
    };;;

    return {

        //main function to initiate the module
        init: function () {
            handleTable();
        }

    };

}();