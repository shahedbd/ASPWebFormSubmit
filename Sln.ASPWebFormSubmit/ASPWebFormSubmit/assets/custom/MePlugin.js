/* Start Custom Editer Tag Section */
function getAppUser(elContainer) {
    $.post("/jquery_get_app_user.aspx", function (data) {
        $("" + elContainer + "").html(data);
    });
}
var key = "";
$("#customTextEdit").keypress(function (e) {
    key = "";
    key = String.fromCharCode(e.which);
    $(".hasTagList").addClass("hide");
});
$("#customTextEdit").keyup(function (e) {
    if (key == "#") {
        var position = $("#customTextEdit").position();
        var top = position.top + $("#customTextEdit").height();
        var left = position.left;
        getAppUser(".hasTagList");
        $(".hasTagList").attr("style", "position:absolute;top:" + top + "px;left:" + left + "px;z-index:100000;width:" + $("#customTextEdit").width() + "px;list-style:none;margin-left:0px;");
        $(".hasTagList").removeClass("hide");
        key = "";
    }
});
$(".hasTagList li").live("click", function () {
    //$("#customTextEdit").html($("#customTextEdit").html() + " <a href='#" + $(this).attr("data-usr") + "'>" + $(this).attr("data-usr") + "</a> &nbsp;&nbsp;");
    $("#customTextEdit").html($("#customTextEdit").html() + "<a>" + $(this).attr("data-usr") + "<user-" + $(this).attr("data-usr-id") + "/></a> &nbsp;&nbsp;&nbsp;");
    $(".hasTagList").addClass("hide");
});
$("#fm_info").on("submit", function () {
    event.preventDefault();
    $("#hashTag").val($("#customTextEdit").html());
    if ($("#hashTag").val().length == 0) {
        alert("Please enter the reason form submit from");
    }
    $("#fm_info")[0].submit();
});
/* END Custom Editer Tag Section */
/*Notification Section*/
jQuery(document).ready(function () {
    getNotification()
});
function getNotification() {
    $.post("/application/jquery_get_notification.aspx", function (data) {
        $("#ul_Notification").html(data);
        var vrTotalNotification = $("#pTotalTaged").attr("data-attr-total");
        $(".badge").html(vrTotalNotification);
    });
}

$("#header_inbox_bar").click(function () {
    getNotification();
});

window.setInterval(function () {
    getNotification();
}, 5000);
/*Notification Section End*/
