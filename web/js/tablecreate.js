function tableshow() {
    var tdtext="<td>\n" +
        "                    <div class=\"mask_container\">\n" +
        "                        <div class=\"mask_img\">\n" +
        "                            <img src=\"img/carousel_pic7.jpg\" height=\"100%\" width=\"100%\">\n" +
        "                            <div class=\"mask\"></div>\n" +
        "                        </div>\n" +
        "                        <div class=\"mask_text\">\n" +
        "                            <p>hahahahhaahahha</p>\n" +
        "                        </div>\n" +
        "                        <div class=\"mask_price\">\n" +
        "                            <div class=\"mask_price_img\">\n" +
        "                                <img src=\"img/yuan_logo_red.png\" height=\"100%\" width=\"100%\">\n" +
        "                            </div>\n" +
        "                            <div class=\"mask_price_text\">\n" +
        "                                <p>1200</p>\n" +
        "                            </div>\n" +
        "                        </div>\n" +
        "                        <div class=\"mask_collect\"></div>\n" +
        "                    </div>\n" +
        "                </td>"
    var tdtextwhole="";
    for (i=0;i<5;i++){
        tdtextwhole+=tdtext;
    }
    var trtext="<tr>"+tdtextwhole+"</tr>";
    var trtextwhole=""
    for (i=0;i<16;i++){
        trtextwhole+=trtext;
    }
    document.getElementById("test_tbody").innerHTML=trtextwhole;

    $(".mask_collect").click(function () {
        $(this).toggleClass("mask_collect_active")
    })
}