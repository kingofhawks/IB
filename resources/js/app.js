/**        **/
function doDelete2()
{
    var a = document.getElementsByName("id");
    var chked = false;
    for (i=0; i<a.length; i++)
    {
        if (a[i].checked)
        {
            chked = true;
            break;
        }
    }
    if (chked)
    {
        alertify.confirm("请确认您要删除所选的项目？", function (e) {
            if (e) {
                // user clicked "ok"
                document.forms[1].submit();
            } else {
                // user clicked "cancel"
            }
        });
    }
    else
    {
        alertify.alert("请至少选择一个项目");
        return false;
    }
}
$(document).ready(function(){
    $('input').iCheck({
        checkboxClass: 'icheckbox_square-blue',
        radioClass: 'iradio_square',
        increaseArea: '20%' // optional
    });

    $('#selectAll').on('ifChanged', function(){
        if ($(this).prop('checked')) {
            $('input').iCheck("check");
        } else {
            $('input').iCheck("uncheck");
        }
    });
});

/**Create toolbar for table **/
function create_toolbar(create_url){
    $( ".form-with-toolbar" ).after( "<div class=\"form-group\" id=\"toolbar\"><a href=\"" + create_url + "\" class=\"btn btn-primary active\" role=\"button\" data-toggle=\"tooltip\"  title=\"新建\"><i class=\"fa fa-plus\"></i></a><a href=\"#\" class=\"btn btn-primary active\" role=\"button\"  onclick=\"doDelete2()\" data-toggle=\"tooltip\"  title=\"删除\"><i class=\"fa fa-trash-o\"></i></a></div>" );
}

