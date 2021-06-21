const btnDiv = document.getElementById('btnDiv');
const btn = btnDiv.querySelector('button');

const link = document.getElementById('link');
btn.onclick = () => {
    if (link.style.display == "none") {
        link.style.display = "block";
    } else {
        link.style.display = "none";
    }
    window.onresize=function(){
        let vw=document.documentElement.clientWidth;
        if(vw>600){
            link.style.display="block"};
    }
}