const coll = document.getElementsByClassName("collapsible");

for (let i = 0; i < coll.length; i++) {
    coll[i].addEventListener("click", function() {
      this.classList.toggle("active");
      const content = this.nextElementSibling;
      if (content.style.maxHeight){
        content.style.maxHeight = null;
      } else {
        content.style.maxHeight = content.scrollHeight + "px";
      } 
    });
}

const main = document.getElementById('main');
const problemArr = main.querySelectorAll('div.collapsible > span:nth-child(2)')
const answerArr = main.querySelectorAll('div.content > span');

const requestURL = 'http://127.0.0.1:8086/system/helpCenter/list';
const request = new XMLHttpRequest();
request.open('GET', requestURL);
request.responseType = 'json';
request.send();

request.onload = function() {
    let superHeroes = request.response;
    for (let index = 0; index < problemArr.length; index++) {
        problemArr[index].innerHTML = superHeroes[index].problem;
        answerArr[index].innerHTML = superHeroes[index].answer;
    }
}