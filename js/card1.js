



// each card
let card1 = [
    [   
        ["網頁基礎應用1",["基本HTML","表單應用","CSS相關應用","基本RWD(Media Query)"],"From基礎程式設計","微簡介","./projects/web/1061_web1/index.html"],
        ["網頁基礎應用2",["基本HTML","CSS相關應用","基本javascript"],"From基礎程式設計","寵物食品購物網","./projects/web/1061_web2/index.html"],
        ["Javascript",["運用chart.js製作圖表"],"From軟體專案管理實作","App市場分析","./projects/web/1092-js/index.html"],
        ["Django",["javascript","jQuery","python","MySQL"],"From產學合作","多民族語言系統",""],
        // ["本網頁介紹",["javascript","bootstrap","RWD"],"From自行製作","介紹",""]
    ],
    [   
        ["Python影像辨識、Linux",["影像辨識(ST-GCN)","深度學習(LSTM)","使用Linux系統"],"From畢業專題製作","人體運動姿勢辨識及矯正比對分析系統","./projects/python/1091_graduateProject/index.html"],
        ["時間序列分析",["資料前處理(平穩化、因果關係、相關性檢驗)","VAR Modeling","Auto ARIMA Model","Prophet","Machine Learning-Linear and Nonlinear Regression Models"],"From金融資料分析(碩士)","CPI預測","./projects/python/1111_multivariate/index.html"],
        ["Python數據分析",["Feature_Engineering","Feature_Selection","Modeling(判別合適之模型)"],"From數據分析課程(碩士)","影片觀看量預測系統","./projects/python/1102_dataAnalysis/index.html"],
        ["Flask",["以Python做web api","與前端串接","語音辨識","語料處理與分析"],"From產學合作","語音販賣機",""],
        ["Python數據分析",["Cohert Analysis","RFM","K-Means"],"From資料科學導論課","顧客分群","./projects/python/1101_CustomerSegmentation/index.html"],
        ["Python數據分析",["K-Meams分群","機器學習","WordCloud做視覺化"],"From決策支援系統課","酒種建議清單","./projects/python/1091_dss/index.html"],
        // ["Python數據分析",["123"],"From數據分析課程","天氣預測系統","./projects/python/1071_dataAnalysis/index.html"],
        // ["Python數據分析",["CNN(Resnet50、Xception、VGG-16)"],"From資料科學導論(碩士)","AOI瑕疵分類",""]
    ],
    [
        ["ASP.NET",["Visual Studio實作ASP.NET"],"From網際網路程式設計","失物招領協尋網",""],
        // ["C#",[],"From自行製作","123",""],
    ],
    // [
    //     ["Chatbot",["運用睿揚的對話管理服務平台製作chatbot"],"From叡揚暑期Chatbot黑客松","點餐機器人",""]
    // ],
    // [
    //     ["PowerBI_1",["主題實作"],"From系上owerBI工作坊","123",""],
    //     ["PowerBI_2",["PowerBI之快速複習"],"From元智×遠傳×微軟「前瞻人才培育工作坊」(微軟AIFundamental原廠認證課程)","Covid-19疫情調查",""]
    // ],
    // [
    //     ["計量決策分析",["運用Stata軟體","問卷調查分析(SEM)","時間序列分析"],"From計量決策分析(碩士)","123",""]
    // ]
];

let title1 = [
    "網頁","Python","C#"
]

// let title1 = [
//     "網頁","Python","C#","LineBot","PowerBI","其他"
// ]

let card2 = [
    ["網頁基礎應用1",["基本HTML","表格運用"],"From基礎程式設計","微簡介",""],
    ["網頁基礎應用2",["基本HTML","CSS相關運用"],"From基礎程式設計","寵物食品購物網",""],
    ["Python數據分析",["K-Meams分群","機器學習","WordCloud做視覺化"],"From決策支援系統課","酒種建議清單",""]
];





// color
let colorstyle = [
    "hsla(218, 44%, 68%, 0.395)",
    "hsla(40, 68%, 75%, 0.509)",
    "hsla(202, 11%, 49%, 0.3)",
    "hsla(165, 50%, 71%, 0.35)"
];


function color() {
    if(count < 4){
        var color = `${colorstyle[count]}`;
        count++;
        return color;
    }
    else{
        count = 0;
        var color = `${colorstyle[count]}`;
        count++;
        return color;
    }
}


//list
function list(li) {
    var list = ``;
    for (i=0; i<li.length; i++) {
        list += `<li>${li[i]}</li>`
    }
    return list;
}


//link or not
function link(link,btntext){
    if(link == ""){
        return `<a class="btn d-grid" onclick=alert('暫不開放')>${btntext}</a>`;
    }
    else{
        return `<a href="${link}" class="btn d-grid">${btntext+'(開放)'}</a>`;
    }
}




//card1
let content1 = ``;
for(let i=0; i<card1.length; i++)
{
    var count = 0;
    // var title = document.createElement("h2");
    
    content1 += `
    <div style="margin-top: 5%">
    <h3>${title1[i]}<hr></h3>
    
    <div class="row g-5">`;
    card1[i].forEach(function(e) {
        
    content1 += `
            <div class="col-lg-3 col-sm-6 col-12">
                <div class="card h-100" style="background-color: `+ color() + `">`+
                    `<div class="card-body d-flex flex-column">
                        <h5 class="card-title h5">${e[0]}</h5>
                        <p class="card-text">`+
                            list(e[1])+
                        `</p>
                        <br />
                        <div class="mt-auto">
                            <footer class="blockquote-footer">${e[2]}</footer>`+
                            link(e[4],e[3])+
                        `</div>
                    </div>
                </div>
            </div>
    `
    })
    content1 += `
        </div>
    </div>`;
}


let card1_content = document.querySelector('#card1');
card1_content.innerHTML = content1;



//card2
// count = 0;
// let content2 = `
// <div style="margin-top: 5%">
//     <div class="row g-5">`;

// card2.forEach(function(e) {
// content2 += `
//         <div class="col-lg-3 col-sm-6 col-12">
//             <div class="card h-100" style="background-color: `+ color() + `">`+
//             `<div class="card-body d-flex flex-column">
//                     <h5 class="card-title h5">${e[0]}</h5>
//                     <p class="card-text">`+
//                         list(e[1])+
//                     `</p>
//                     <br />
//                     <footer class="blockquote-footer">${e[2]}</footer>`+
//                     link(e[4],e[3])+
//                 `</div>
//             </div>
//         </div>
// `
// })
// content2 += `
//     </div>
// </div>`;
// let card2_content = document.querySelector('#card2');
// card2_content.innerHTML = content2;


// document.getElementById('card1').innerHTML = content1;
