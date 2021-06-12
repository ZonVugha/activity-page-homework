const thumb = document.getElementById('carousel');
const thumbSon = document.getElementById('carouselSon');
const requestURL = 'http://127.0.0.1:8086/advertising/advertising/list?type=0';
const request = new XMLHttpRequest();
request.open('GET', requestURL);
request.responseType = 'json';
request.send();

request.onload = function() {
let superHeroes = request.response;
    for(let index = 0; index<superHeroes.length; index++){
        const newImage = document.createElement('img');
        newImage.setAttribute('src', superHeroes[index].advertisingPhoto);
        thumbSon.appendChild(newImage);
    }
}
const span = document.querySelectorAll('span');
for(let i = 0;i<span.length;i++){
    span[i].index=i;
    span[i].onclick=function go(e){
        thumbSon.style.left=-590 * this.index +'px';
        for(let item of span){
            item.className="";
        }
        e.target.className = "on";
}
}
let num = 0;
setInterval(() => {
if(num>=3){
    num = 0;
}
thumbSon.style.left=-590 * span[num].index +'px';
for(let item of span){
    item.className="";
}
span[num].className = "on";
num++;
}, 3000);


const explore = document.getElementById('explore');
const a = explore.querySelectorAll('a');

for (let index = 0; index < a.length; index++) {
    a[index].onclick = () => {
      let status = a[index].title;
      console.log(status);
      sessionStorage.setItem('status', status);
    }
}
