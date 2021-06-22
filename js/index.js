const thumb = document.getElementById('carousel');
const thumbSon = document.getElementById('carouselSon');
const requestURL = 'http://127.0.0.1:8086/advertising/advertising/list?type=0';
const request = new XMLHttpRequest();
request.open('GET', requestURL);
request.responseType = 'json';
request.send();

request.onload = function () {
    let superHeroes = request.response;
    for (let index = 0; index < superHeroes.length; index++) {
        const newImage = document.createElement('img');
        newImage.setAttribute('src', superHeroes[index].advertisingPhoto);
        thumbSon.appendChild(newImage);
    }
}
const carouselBtn = document.getElementById('carouselBtn');
const span = carouselBtn.querySelectorAll('span');
const buy = document.getElementById('buy');
const buyCard = buy.querySelectorAll('div')
for (let i = 0; i < span.length; i++) {
    span[i].index = i;
    span[i].onclick = function(e) {
        thumbSon.style.left = -75 * this.index + 'vw';
        for (let item of span) {
            item.className = "";
        }
        for (const iterator of buyCard) {
            iterator.className = "buyCard";
        }    
        e.target.className = "on";
        console.log(e.target);
        buyCard[i].className = "buyCard buyShow";
    }
}
let num = 0;
setInterval(() => {
    if (num >= 3) {
        num = 0;
    }
    thumbSon.style.left = -75 * span[num].index + 'vw';
    for (let item of span) {
        item.className = "";
    }
    for (const iterator of buyCard) {
        iterator.className = "buyCard";
    }
    buyCard[num].className = "buyCard buyShow";

    span[num].className = "on";
    num++;
}, 5000);


const explore = document.getElementById('explore');
const a = explore.querySelectorAll('a');

for (let index = 0; index < a.length; index++) {
    a[index].onclick = () => {
        let status = a[index].title;
        sessionStorage.setItem('status', status);
    }
}

const getAllURL = "http://127.0.0.1:8086/activity/activity/getAll";
const requestAll = new XMLHttpRequest();
const showBox = document.getElementById('showBox');
requestAll.open('GET', getAllURL);
requestAll.responseType = 'json';
requestAll.send();
requestAll.onload = function () {
    let getAllData = requestAll.response;

    for (let index = 0; index < getAllData.length; index++) {
        const newDiv = document.createElement('div');
        const newDiv2 = document.createElement('div');
        const newImage = document.createElement('img');
        const h4 = document.createElement('h4');
        newDiv.className = "content";
        newDiv2.className = "mask";
        newImage.setAttribute('src', getAllData[index].activityPosters);
        h4.innerHTML = getAllData[index].activityTitle;
        showBox.appendChild(newDiv);
        newDiv.appendChild(newImage);
        newDiv.appendChild(newDiv2);
        newDiv2.appendChild(h4);
    }

}