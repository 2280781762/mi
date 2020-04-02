/**
 * 发送ajax的函数
 *      obj             参数
 *      obj.url         表示请求的路径，必选项
 *      obj.type        表示请求方式，可选项，默认是get
 *      obj.async       表示是否异步，可选项，默认是异步
 *      obj.data        请求携带的数据(请求体),可选项，没有默认值
 *      obj.dataType    请求希望返回的数据类型，可选项，默认为json
 *      obj.success     请求成功是执行的函数
 *      obj.errorq      请求失败时执行的函数
 */
function sendAjax(obj) {
    // 处理是否传入了想要的数据类型
    if (!obj.dataType) {
        obj.dataType = "json"
    }
    // 如果传入了，需要判断类型
    if (obj.dataType != "json" && obj.dataType != "string") {
        throw new Error("想要的数据类型参数不正确，只接受json或string");
    }
    // 判断是否传入了url
    if (!obj.url) {
        throw new Error("请求的url不能为空");
    }
    // 如果传入了url - 判断是不是字符串
    if (Object.prototype.toString.call(obj.url) != '[object String]') {
        throw new Error("请求的url不是一个正确的url");
    }
    // 是否传入了请求方式
    if (!obj.type) {
        obj.type = "get";
    }
    // 如果传入了请求方式
    if (obj.type != "get" && obj.type != "post") {
        throw new Error("请求方式的参数必须是get或post");
    }
    // 先判断数据是否有传
    if (obj.data) {
        if (Object.prototype.toString.call(obj.data) == '[object String]' && obj.data.indexOf("=") != -1) {
            obj.data = obj.data;
        } else if (Object.prototype.toString.call(obj.data) == '[object Object]') {
            var data = '';
            var f = '';
            for (var attr in obj.data) {
                data += f + attr + "=" + obj.data[attr];
                f = "&";
            }
            obj.data = data;
        } else {
            throw new Error("传入的数据类型不正确，只接受字符串或对象");
        }
    }
    // 判断请求方式是get的话，需要将数据拼接在url后面
    if (obj.url == "get") {
        obj.url += "?" + obj.data;
    }
    // 先判断是否传了
    if (obj.async == undefined) { // 访问一个对象中并不存在的键，返回undefined
        obj.async = true;
    }
    if (Object.prototype.toString.call(obj.async) != '[object Boolean]') { // 判断这个参数的类型是不是布尔值
        // 不是布尔值 - 传错了 - 抛出一个错误
        throw new Error("是否异步的参数必须是一个布尔值");
    }
    // 判断成功函数和失败函数是否传进来
    if (!obj.success) {
        obj.success = function () {}
    }
    if (!obj.error) {
        obj.error = function () {}
    }
    // 兼容创建ajax对象
    var xhr;
    try {
        // 针对W3C标准浏览器的
        xhr = new XMLHttpRequest();
    } catch (e) {
        // 针对低版本IE的
        xhr = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xhr.open(obj.type, obj.url, obj.async);
    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4) {
            if (xhr.status >= 200 && xhr.status < 300) {
                res = xhr.responseText;
                if (obj.dataType === "json") {
                    // 将json字符串转成json对象
                    res = JSON.parse(res);
                }
                obj.success(res);
            } else {
                obj.error()
            }
        }
    }
    if (obj.type === "post") {
        xhr.setRequestHeader("content-type", "application/x-www-form-urlencoded");
        if (obj.data) { // 有传值
            xhr.send(obj.data);
            return;
        }
    }
    xhr.send();
}
// 在调用的时候，参数太多，容易弄混 - 将所有参数作为对象传入
// 默认情况下咱们发送的是异步请求 - 可以省略同步异步的参数
// 请求方式的处理：如果不传，表示默认是get请求，如果有传，必须是get或post
// 请求的url，必须穿，不能省略，url一定是一个字符串
// 数据可以是字符串，可以是对象
// ajax返回数据的时候，有的时候是一个字符串，有的时候是一个json字符串 - 需要多传入一个参数，表示最终要什么类型的数据
// sendAjax({
//     type:"get",
//     url:"3-demo.php",
//     async:false, // 作为一个可选参数
//     // data:"name=张三&pid=10",
//     data:{
//         name:"张安",
//         age:18,
//         gender:"男"
//     },
//     dataType:"json"
//     // success:function(res){
//     //     console.log(res);
//     // },
//     // error:function(){
//     //     console.log("失败了");
//     // }
// });
// sendAjax("get","3-demo.php",true,"name=张三&pid=10",function(res){
//     console.log(res);
// },function(){
//     console.log("请求失败了");
// });
// json字符串，应该转成json对象 - 

/***************************调用模板*****************************/
// sendAjax({
//     url:"3-demo.php", // 必须传
//     type:"get/post", // 可选项，默认是get
//     async:true/false, // 可选项，默认是true
//     data:"键=值&键=值", // 可以是字符串但要包含=是键值对的形式，或者是对象
//     data:{
//         键:值,
//         键:值
//     },
//     dataType:"json/string", // 可选项，默认是json
//     success:function(res){ // 成功时执行的函数

//     },
//     error:function(){ // 失败时执行的函数

//     }
// });