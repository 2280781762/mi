//单例模式下的封装
var tool = (function (){
    //定义工具箱的类
    class Tool{
        //用constructor方法写兼容,且只执行一次
        constructor(){
            this.flag = true;
            if(window.getComputedStyle){
                this.flag = true;
            }else{
                this.flag = false;
            }
        }

        //获取随机数
        getRandom(a,b){
            var max = Math.max(a,b);
            var min = Math.min(a,b);
            return parseInt(Math.random()*(max-min))+min;
        }

        //获取随机颜色
        getColor(){
            return `rgb(${this.getRandom(0,256)},${this.getRandom(0,256)},${this.getRandom(0,256)})`;
        }

        //设置样式
        setStyle(ele,styleObj){
            for(var attr in styleObj){
                ele.style[attr] = styleObj[attr];
            }
        }

        //获取样式
        getStyle(ele,attr){
            if(this.flag){
                return window.getComputedStyle(ele)[attr];
            }else{
                return ele.currentStyle[attr];
            }
        }
        //发送ajax
        sendAjax(obj) {
            if (!obj.dataType) {//是否是想要的数据类型
                obj.dataType = "json"
            }
            if (obj.dataType != "json" && obj.dataType != "string") {//判断数据类型
                throw new Error("想要的数据类型参数不正确，只接受json或string");
            }
            if (!obj.url) {//判断是否传url
                throw new Error("请求的url不能为空");
            }
            if (Object.prototype.toString.call(obj.url) != '[object String]') {//判断url是不是字符串
                throw new Error("请求的url不是一个正确的url");
            }
            if (!obj.type) {//是否传入请求方式
                obj.type = "get";
            }
            //判断请求方式
            if (obj.type != "get" && obj.type != "post") {
                throw new Error("请求方式的参数必须是get或post");
            }
            if (obj.data) {//判断数据是否传入
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
            if (obj.url == "get") {//get的连接方式
                obj.url += "?" + obj.data;
            }
            if (obj.async == undefined) { //判断是否异步有内容
                obj.async = true;
            }
            if (Object.prototype.toString.call(obj.async) != '[object Boolean]') { //判断异步内容是不是布尔值
                throw new Error("是否异步的参数必须是一个布尔值");
            }
            if (!obj.success) {//成功之后
                obj.success = function () {}
            }
            if (!obj.error) {//失败之后
                obj.error = function () {}
            }
            //兼容ajax对象
            var xhr;
            try {
                xhr = new XMLHttpRequest();
            } catch (e) {
                xhr = new ActiveXObject("Microsoft.XMLHTTP");
            }
            //主体
            xhr.open(obj.type, obj.url, obj.async);
            xhr.onreadystatechange = function () {
                if (xhr.readyState === 4) {
                    if (xhr.status >= 200 && xhr.status < 300) {
                        res = xhr.responseText;
                        if (obj.dataType === "json") {
                            res = JSON.parse(res);
                        }
                        obj.success(res);
                    } else {
                        obj.error()
                    }
                }
            }
            if (obj.type === "post") {//post传输方式
                xhr.setRequestHeader("content-type", "application/x-www-form-urlencoded");
                if (obj.data) {
                    xhr.send(obj.data);
                    return;
                }
            }
            xhr.send();
        }

        //promiseAjax
        pAjax(obj){
            //大致与ajax一样，只有成功失败后有差距
            return new Promise(function(resolve,reject){
                if(!obj.dataType){
                    obj.dataType = "json"
                }
                if(obj.dataType!="json" && obj.dataType!="string"){
                    throw new Error("想要的数据类型参数不正确，只接受json或string");
                }
                if(!obj.url){
                    throw new Error("请求的url不能为空");
                }
                if(Object.prototype.toString.call(obj.url)!='[object String]'){
                    throw new Error("请求的url不是一个正确的url");
                }
                if(!obj.type){
                    obj.type = "get";
                }
                if(obj.type!="get" && obj.type!="post"){
                    throw new Error("请求方式的参数必须是get或post");
                }
                if(obj.data){
                    if(Object.prototype.toString.call(obj.data)=='[object String]' && obj.data.indexOf("=")!=-1){
                        obj.data = obj.data;
                    }else if(Object.prototype.toString.call(obj.data)=='[object Object]'){
                        var data = '';
                        var f = '';
                        for(var attr in obj.data){
                            data += f + attr + "=" + obj.data[attr];
                            f = "&";
                        }
                        obj.data = data;
                    }else{
                        throw new Error("传入的数据类型不正确，只接受字符串或对象");
                    }
                }
                if(obj.url=="get"){
                    obj.url += "?"+obj.data;
                }
                if(obj.async==undefined){
                    obj.async = true;
                }
                if(Object.prototype.toString.call(obj.async)!='[object Boolean]'){
                    throw new Error("是否异步的参数必须是一个布尔值");
                }
                var xhr;
                try{
                    xhr = new XMLHttpRequest();
                }catch(e){
                    xhr = new ActiveXObject("Microsoft.XMLHTTP");
                }
                xhr.open(obj.type,obj.url,obj.async);
                xhr.onreadystatechange = function(){
                    if(xhr.readyState===4){
                        if(xhr.status>=200 && xhr.status<300){
                            res = xhr.responseText;
                            if(obj.dataType==="json"){
                                res = JSON.parse(res);
                            }
                            resolve(res);//成功
                        }else{
                            reject();//失败
                        }
                    }
                }
                if(obj.type==="post"){
                    xhr.setRequestHeader("content-type","application/x-www-form-urlencoded");
                    if(obj.data){
                        xhr.send(obj.data);
                        return;
                    }
                }
                xhr.send();
            });
        }

        //获取cookie
        getCookie(key){
            // 先获取所有cookie
            var cookies = document.cookie;
            // 通过 ;  将所有cookie分割
            var arr = cookies.split("; ");
            var length = arr.length;
            for(var i=0;i<length;i++){
                // 通过 =  分割每一个元素
                var brr = arr[i].split("=");
                // 判断第一个元素是否和key相等
                if(brr[0]===key){
                    // 将第二个元素返回
                    return brr[1];
                }
            }
        }

        //设置cookie
        setCookie(key,value,seconds=0,path="/"){
            if(seconds==0){
                document.cookie = key + "=" + value + ";path="+path;
            }else{
                var date = new Date(+new Date()-8*3600*1000+seconds*1000);
                document.cookie = key + "=" + value + ";expires="+date+";path="+path;
            }
            
        }

        //删除cookie
        removeCookie(key,path="/"){
            setCookie(key,null,-1,path);
        }

        //运动函数  依赖获取样式
        move(ele,obj,fn){
            let timerObj = {};
            for(let attr in obj){
                let target = obj[attr];
                if(attr=="opacity"){
                    target = target * 100;
                }
                timerObj[attr] = setInterval(function(){
                    let l;
                    if(attr=="opacity"){
                        l = getStyle(ele,attr);
                        l *= 100;
                    }else{
                        l = parseInt(getStyle(ele,attr));
                    }
                    let percent = (target-l)/10;
                    if(percent>0){
                        percent = Math.ceil(percent);
                    }else{
                        percent = Math.floor(percent);
                    }
                    l += percent;
                    if(l==target){
                        clearInterval(timerObj[attr]);
                        delete timerObj[attr];
                        var k = 0;
                        for(let j in timerObj){
                            k++;
                        }
                        if(k==0){
                            fn();
                        }
                    }else{
                        if(attr=="opacity"){
                            ele.style[attr] = l/100;
                        }else{
                            ele.style[attr] = l + "px"
                        }
                    }
                },20);
            }
        }

        //jsonp
        jsonp(obj){
            window.fn = obj.fn;
            obj.url += "?fname=fn";
            if(obj.data){
                for(var attr in obj.data){
                    obj.url += "&" + attr + "=" + obj.data[attr];
                }
            }
            var script = document.createElement("script");
            script.setAttribute("src",obj.url);
            script.setAttribute("name","kuayu");
            document.head.appendChild(script);
            document.head.removeChild(document.querySelector("[name='kuayu']"));
        }
    }

    var obj;
    return function(){
        if(!obj){
            obj = new Tool;
        }
        return obj;
    }
})();

/** Tool工具的使用说明
 *  var t = tool();
    var t1 = tool();
    var a = t.getRandom(20,100);
    console.log(a);
    console.log(t === t1);
    var div = document.querySelector("div");
    t.setStyle(div,{
        width:"100px",
        height:"100px",
        background:t.getColor()
    });
    console.log(t.getStyle(div,"width"));
 * 
*/

//获取样式使用案例
// setStyle(div,{
//     width:"10px",
//     height:"10px"
// });  

/** ajax与promiseAjax 案例
 * 发送ajax的函数
 *      obj             参数
 *      obj.url         表示请求的路径，必选项
 *      obj.type        表示请求方式，可选项，默认是get
 *      obj.async       表示是否异步，可选项，默认是异步
 *      obj.data        请求携带的数据(请求体),可选项，没有默认值
 *      obj.dataType    请求希望返回的数据类型，可选项，默认为json
 *      obj.success     请求成功是执行的函数
 *      obj.errorq      请求失败时执行的函数
 *  
 *  发送ajax案例
 *  sendAjax({
        url:"3-demo.php", // 必须传
        type:"get/post", // 可选项，默认是get
        async:true/false, // 可选项，默认是true
        data:"键=值&键=值", // 可以是字符串但要包含=是键值对的形式，或者是对象
        data:{
            键:值,
            键:值
        },
        dataType:"json/string", // 可选项，默认是json
        success:function(res){ // 成功时执行的函数

        },
        error:function(){ // 失败时执行的函数

        }
    });

    发送promiseAjax案例
    pAjax({
        url:"",
        data:{},
        type:"",
            //除了success和error其他参数跟sendAjax是一样的
    }).then(function(res){
        //成功后
    }).catch(fuction{
        //失败后
    });
 */

/** cookie操作
 * 获取cookie
 * key 将要获取的cookie的键
 *
 * 
 * 设置cookie
 * key     要设置的cookie的键
 * value   要设置的cookie的值
 * seconds 要设置的cookie的有效期   多少秒之后
 * path    要设置的cookie有效的路径
 * 
 * 删除cookie
 * key  将要删除的cookie的键
 * path 将要删除的cookie的有效路径
 */

/** 运动函数操作
 * ele 元素
 * obj 发生怎么的变化
 * fn  变化结束之后
 */

/** jsonp示例
    jsonp({
        url:"http://www.niubi.com/index.php",
        data:{
            id:3,
        },
        fn:function(res){
            console.log(res);
            
        }
    });
*/