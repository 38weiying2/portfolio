// -----------------------------------------計算x、y軸值--------------------------------------------
var list = [
{"category": "Strategy","ratingcount": "17297"},//3
{"category": "Communication","ratingcount": "235392"},//2
{"category": "Educational","ratingcount": "10990"},//10
{"category": "Tools", "ratingcount": "488639"},//4
{"category": "Educational","ratingcount": "302700"},//9
{"category": "Traffic","ratingcount": "17297"},//3
{"category": "Social","ratingcount": "10990"},//10
{"category": "Commercial", "ratingcount": "488639"},//4
{"category": "Social","ratingcount": "44700"},//9
{"category": "Shopping","ratingcount": "67297"},//3

]


var result = [];
var repeat = [];

var count2 = [];
var sumratingcount = [];
var avgratingcount= [];

for (var i = 0, len = list.length; i < len; i++)
{
	var item = list[i].category;
	if(result.includes(item)) //item在result中出現，放入repeat中，並增加count1與rating 及count2與ratingcount
	{	repeat.push(item);
		// document.getElementById("try").innerHTML = item;
		var index = result.indexOf(item); //item是result中的第幾個
		
		sumratingcount[index] = parseFloat(sumratingcount[index]) + parseFloat(list[i].ratingcount);
		count2[index]++;
	}
	else
	{
		result.push(item);
		
		sumratingcount.push(list[i].ratingcount);
		count2.push(1);
	}
}

for (var i = 0, len = count2.length; i < len; i++)
{
	avgratingcount.push((parseFloat(sumratingcount[i])/parseFloat(count2[i])).toFixed(0));
}

var outputStr = "---notrepeat:" + result  + "<br> repeat: " + repeat
				+ "<br><br> sumratingcount: " + sumratingcount
				+ "<br> count2: " + count2	+ "<br> ---avgratingcount: " + avgratingcount;
				
// document.getElementById("chart2_data").innerHTML = outputStr;




// -----------------------------------------作圖----------------------------------------------------

var bor = [];//'rgba(172, 171, 170, 0.8)';
var color = [];

for(var i=0; i<avgratingcount.length; i++)
{
	var r = Math.floor(Math.random()*250);
	var g = Math.floor(Math.random()*250);
	var b = Math.floor(Math.random()*250);
	color[i] ='rgba'+'(' + r + ',' + g + ','+ b +',' + 0.3 + ')';
	bor[i] = 'rgba'+'(' + r + ',' + g + ','+ b +',' + 0.8 + ')';
}

var ctx = document.getElementById('chart2').getContext('2d');

var chart2 = new Chart(ctx, {
  type: 'bar',
  data: {
	labels: result, //label值(x軸)
	datasets: [{
	  label: 'Average ratingcount', //標頭值
	  data: avgratingcount, //資料值(y軸)
	  backgroundColor: color,
	  borderColor: bor,
      borderWidth: 1,
	}
	]
  },
  options: {
	 scales: { 
	  xAxes: [{
	  // scaleLabel: {
	  // display: true,
	  // labelString: "Category",
	  // fontSize: 15
	  // padding: 0
	  // },
      ticks: {
        maxRotation: 90 
      }
    }],
     yAxes: [{ 
     type: 'linear', 
     position: 'left', 
	 scaleLabel: {
	 display: true,
	 labelString: "Average ratingcount",
	 fontSize: 18,
	 padding: 10
	 },
     // ticks: { 
      // max: 500000, 
      // min: 0 
     // } 
     }] 
    } ,
	 title: { 
      display: true, 
      text: '' ,
	  // position: 'left',
	  fontSize: 15,
	  padding: 0
     },
	legend: { 
     display: false
	},
	hover: {
	  animationDuration: 0  // 防止鼠标移上去，数字闪烁
	},
	animation: {           // 这部分是数值显示的功能实现
	  onComplete: function () {
		var chartInstance = this.chart,
		ctx = chartInstance.ctx;
		// 以下属于canvas的属性（font、fillStyle、textAlign...）
		ctx.font = Chart.helpers.fontString(Chart.defaults.global.defaultFontSize, Chart.defaults.global.defaultFontStyle, Chart.defaults.global.defaultFontFamily);
		ctx.fillStyle = "black";
		ctx.textAlign = 'center';
		ctx.textBaseline = 'bottom';
		this.data.datasets.forEach(function (dataset, i) {
			var meta = chartInstance.controller.getDatasetMeta(i);
			meta.data.forEach(function (bar, index) {
				var data = dataset.data[index];
				ctx.fillText(data, bar._model.x, bar._model.y-5);
			});
		});
	  }
	}
  }
});

