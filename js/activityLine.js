const content = document.querySelector('main');

const activityLine = document.getElementById('activityLine');
const a = activityLine.querySelectorAll('a');
for (let index = 0; index < a.length; index++) {
    a[index].onclick = ()=> {
        let status = a[index].title;
        sessionStorage.setItem('status', status);
    }

}
let getData = sessionStorage.getItem('status');


const requestURL = `http://127.0.0.1:8086/activity/signUpTable/list?status=${getData}&commonUserId=1`;
const request = new XMLHttpRequest();
request.open('GET', requestURL);
request.responseType = 'json';
request.send();

request.onload = function () {
    let data = request.response;
    for (let index = 0; index < data.length; index++) {
        const newDiv = document.createElement('div');
        const newDivImg = document.createElement('div');
        const newDiv2 = document.createElement('div');
        const newImage = document.createElement('img');
        const h4 = document.createElement('h4');
        const spanPosition = document.createElement('span');
        const spanTime = document.createElement('span');
        newDiv.className = "content";
        newDivImg.className = "divImg";
        newDiv2.className = "mask textBox";
        newImage.setAttribute('src', data[index].activityPosters);
        h4.innerHTML = data[index].activityTitle;
        spanPosition.innerHTML = data[index].addr;
        spanTime.innerHTML = data[index].releaseTime;
        content.appendChild(newDiv);
        newDivImg.appendChild(newImage);
        newDiv.appendChild(newDivImg);
        newDiv.appendChild(newDiv2);
        newDiv2.appendChild(h4);
        newDiv2.appendChild(spanPosition);
        newDiv2.appendChild(spanTime);

    }
}
for (let index = 0; index < a.length; index++) {

}
console.log(getData);
switch (getData) {
    case '':
        a[0].style.backgroundColor = 'rgb(43, 236, 182)';
        break;
    case '2':
        a[1].style.backgroundColor = 'rgb(43, 236, 182)';
        break;
    case '3':
        a[2].style.backgroundColor = 'rgb(43, 236, 182)';
        break;
    case '4':
        a[3].style.backgroundColor = 'rgb(43, 236, 182)';
        break;
    case '5':
        a[4].style.backgroundColor = 'rgb(43, 236, 182)';
        break;
}