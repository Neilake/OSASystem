/*下拉菜单 */
function showMenu1() {
    var menu1 = document.getElementById("u1");
    if (menu1.style.display == "block") {
        menu1.style.display = "none";
    } else {
        menu1.style.display = "block";
    }
}
function showMenu2() {
    var menu2 = document.getElementById("u2");
    if (menu2.style.display == "block") {
        menu2.style.display = "none";
    } else {
        menu2.style.display = "block";
    }
}
function showMenu3() {
    var menu3 = document.getElementById("u3");
    if (menu3.style.display == "block") {
        menu3.style.display = "none";
    } else {
        menu3.style.display = "block";
    }
}
function showMenu4() {
    var menu4 = document.getElementById("u4");
    if (menu4.style.display == "block") {
        menu4.style.display = "none";
    } else {
        menu4.style.display = "block";
    }
}
function showMenu5() {
    var menu5 = document.getElementById("u5");
    if (menu5.style.display == "block") {
        menu5.style.display = "none";
    } else {
        menu5.style.display = "block";
    }
}
/*24小时时钟*/
function getdates() {
    var now = new Date();
    var hour = now.getHours();
    var week = now.getDay();
    var time;
    if (hour > 12) {
        time = "PM";
    } else {
        time = "AM";
    }
    // 获取星期
    var weekday = ["星期天", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"];
    for (var i = 0; i < weekday.length - 1; i++) {
        if (i == week) {
            week = weekday[i];
            break;
        }
    }
    var shows = now.getFullYear() + " 年 " + (now.getMonth() + 1) + " 月 " + now.getDate() + " 日 " +
        hour + " : " + now.getMinutes() + " : " + now.getSeconds() + time + "&nbsp;" + week;
    document.getElementById("date").innerHTML = shows;
    setTimeout("getdates()", 1000);
}
//用户管理
var i = 1;
function addRow() {
    var tab2 = document.getElementById("tab2");
    var tr = tab2.insertRow(tab2.rows.length);
    var col31 = tr.insertCell(0);
    col31.innerHTML = i++;
    var col32 = tr.insertCell(1);
    col32.innerHTML = "name";
    var col33 = tr.insertCell(2);
    col33.innerHTML = "<input type='botton' value='删除' onclick='delRow()'>";
}
function delRow() {
    var tab2 = document.getElementById("tab2");
    tab2.deleteRow(tab2.rows.length - 1);
}
//商品信息管理
//点击全选按钮，全部选中
function selectAll() {
    var checklist = document.getElementsByName("thing");//获取复选框的名称
    if (document.getElementById("controlAll").checked) {//获取点击全选复选框的ID
        for (var i = 0; i < checklist.length; i++) {
            checklist[i].checked = true;
        }
    } else {
        for (var j = 0; j < checklist.length; j++) {
            checklist[j].checked = false;
        }
    }
}
//全部选中时，全选按钮自动选中
function All() {
    var all = document.getElementById("controlAll");//获取点击全选的那个复选框的ID
    var checklist = document.getElementsByName("thing");//获取复选框的名称
    for (var i = 0; i < checklist.length; i++) {
        if (checklist[i].checked == false) {
            all.checked = false;
            return;
        }
    }
    all.checked = true;
}

