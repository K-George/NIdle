//****************所使用的数据是school.js******************//

var addrShow = document.getElementById('school-show');
var prov = document.getElementById('prov');
var city = document.getElementById('city');
var school = document.getElementById('school');

/*用于保存当前所选的省市区*/
var current = {
    prov: '',
    city: '',
    school: ''
};

/*自动加载省份列表*/
(function showProv() {
    var len = provice.length;
    for (var i = 0; i < len; i++) {
        var provOpt = document.createElement('option');
        provOpt.value = provOpt.innerText = provice[i]['name'];
        prov.appendChild(provOpt);
    }
})();

/*根据所选的省份来显示城市列表*/
function showCity(obj) {
    var val = obj.options[obj.selectedIndex].value;
    if (val != current.prov) {
        current.prov = val;
        addrShow.value = '';
        city.length = 1;
        school.length = 1;
    }

    if (val != '') {
        //查找省的索引
        var len = provice.length;
        let provIndex = 0;
        for (var i = 0; i < len; i++) {
            if (val == provice[i]['name']) {
                provIndex = i;
            }
        }

        var cityLen = provice[provIndex]["city"].length;
        for (var j = 0; j < cityLen; j++) {
            var cityOpt = document.createElement('option');
            cityOpt.value = cityOpt.innerText = provice[provIndex]["city"][j].name;
            city.appendChild(cityOpt);
        }
    }
}

/*根据所选的城市来显示学校列表*/
function showSchool(obj) {
    var val = obj.options[obj.selectedIndex].value;
    if (val != current.city) {
        current.city = val;
        addrShow.value = '';
        school.length = 1; //清空之前的内容只留第一个默认选项
    }

    //查找省的索引
    var provLen = provice.length;
    let provIndex = 0;
    for (var i = 0; i < provLen; i++) {
        if (current.prov == provice[i]['name']) {
            provIndex = i;
            break;
        }
    }

    //查找城市的索引
    var cityLen = provice[provIndex]["city"].length;
    let cityIndex = 0;
    for (var i = 0; i < cityLen; i++) {
        if (current.city == provice[provIndex]["city"][i].name) {
            cityIndex = i;
            break;
        }
    }

    if (val != '') {
        var countryLen = provice[provIndex]["city"][cityIndex].districtAndSchool.length;
        if (countryLen == 0) {
            addrShow.value = current.prov + '-' + current.city;
            return;
        }
        for (var n = 0; n < countryLen; n++) {
            var countryOpt = document.createElement('option');
            countryOpt.innerText = provice[provIndex]["city"][cityIndex].districtAndSchool[n];
            countryOpt.value = provice[provIndex]["city"][cityIndex].districtAndSchool[n];
            school.appendChild(countryOpt);
        }
    }
}

/*选择学校并且提交*/
function selecSchool(obj) {
    current.school = obj.options[obj.selectedIndex].value;
    if ((current.city != '') && (current.school != '')) {
        addrShow.value =current.school
    }
}

//切换状态
$("#search_sell_logo").click(function () {
    if($("#search_sell_logo").hasClass("glyphicon glyphicon-chevron-down")){
        $("#search_sell_logo").attr("class","glyphicon glyphicon-chevron-up");
        $("#schoolSelectTable").toggle();
    }else {
        $("#search_sell_logo").attr("class","glyphicon glyphicon-chevron-down");
        $("#schoolSelectTable").toggle();
        $("#prov").val("=请选择省份=");
        $("#city").val("=请选择城市=");
        $("#school").val("=请选择学校=");
    }
})
