let getData = sessionStorage.getItem('status');

const requestURL = `http://127.0.0.1:8086/activity/signUpTable/list?status=${getData}&commonUserId=1`;
const request = new XMLHttpRequest();
request.open('GET', requestURL);
request.responseType = 'json';
request.send();

const showBox = document.getElementById('showBox');
request.onload = function() {
    let data = request.response;
    console.log(data[0].activityPosters);
    for (let index = 0; index < data.length; index++){
        const newDiv = document.createElement('div');
        const newDiv2 = document.createElement('div');
        const newImage = document.createElement('img');
        const h4 = document.createElement('h4');
        newDiv.className = "content";
        newDiv2.className = "mask";
        newImage.setAttribute('src', data[index].activityPosters);
        h4.innerHTML = data[index].activityTitle;
        showBox.appendChild(newDiv);
        newDiv.appendChild(newImage);
        newDiv.appendChild(newDiv2);
        newDiv2.appendChild(h4);
    }
}