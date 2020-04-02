function jsonp(obj){
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
// 示例
// jsonp({
//     url:"http://www.niubi.com/index.php",
//     data:{
//         id:3,
//     },
//     fn:function(res){
//         console.log(res);
        
//     }
// });