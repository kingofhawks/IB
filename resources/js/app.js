/**
 * Created with IntelliJ IDEA.
 * User: simon
 * Date: 14-5-30
 * Time: 下午4:37
 * To change this template use File | Settings | File Templates.
 */
function doDelete2(){var e=document.getElementsByName("id"),t=!1
    for(i=0;i<e.length;i++)if(e[i].checked){t=!0
        break}return t?void alertify.confirm("请确认您要删除所选的项目？",function(e){e&&document.forms[1].submit()}):(alertify.alert("请至少选择一个项目"),!1)}function create_toolbar(e){$(".form-with-toolbar").after('<div class="form-group" id="toolbar"><a href="'+e+'" class="btn btn-primary active" role="button" data-toggle="tooltip"  title="新建"><i class="fa fa-plus"></i></a><a href="#" class="btn btn-primary active" role="button"  onclick="doDelete2()" data-toggle="tooltip"  title="删除"><i class="fa fa-trash-o"></i></a></div>')}$(document).ready(function(){$("input").iCheck({checkboxClass:"icheckbox_square-blue",radioClass:"iradio_square",increaseArea:"20%"}),$("#selectAll").on("ifChanged",function(){$("input").iCheck($(this).prop("checked")?"check":"uncheck")})})
