function getPar(par){
    let local_url = decodeURI(document.location.href);
    let get = local_url.indexOf(par + "=");
      if(get == -1) {
        return "";
      }
    let get_par = local_url.slice(par.length + get + 1);
    let nextPar = get_par.indexOf("&");
      if(nextPar != -1) {
        get_par = get_par.slice(0, nextPar);
      }
  return get_par;
}
let keyword = getPar("search");
let uri = 'http://127.0.0.1:8086/activity/activity/list?filter4KeywordsOrActivityTitle=' + keyword;
const requestURLSea = encodeURI(uri);
const requestSea = new XMLHttpRequest();
requestSea.open('GET', requestURLSea);
requestSea.responseType = 'json';
requestSea.send();

const content = document.querySelector('main');


requestSea.onload = function() {
  let data = requestSea.response;
  if (data != "") {
      for (let index = 0; index < data.length; index++){
        const newDiv = document.createElement('div');
        const newImage = document.createElement('img');
        const span = document.createElement('span');
        newDiv.className = "content";
        newImage.setAttribute('src', data[index].activityPosters);
        span.innerHTML = data[index].activityTitle;
        content.appendChild(newDiv);
        newDiv.appendChild(newImage);
        newDiv.appendChild(span);
    }
  } else {
    const p = document.createElement('p');
    p.innerHTML = `没有查询到与${keyword}相关的活动！`;
    content.appendChild(p);
  }

}



