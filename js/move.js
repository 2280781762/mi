// 运动函数 - 依赖获取元素样式的函数 getStyle
function move(ele,obj,fn){
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
// 封装获取元素样式的兼容函数
function getStyle(ele,attr){
    if(window.getComputedStyle){
        return window.getComputedStyle(ele)[attr];
    }else{
        return ele.currentStyle[attr];
    }
}