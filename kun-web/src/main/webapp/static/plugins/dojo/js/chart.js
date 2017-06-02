function area2D(domNode){
	var data = [
	        	{
	        		name : '上海',
	        		value:[4,16,18,20,32,36,38,38,36,26,20,14],
	        		color:'#dad81f'
	        	},
	        	{
	        		name : '北京',
	        		value:[2,12,14,20,28,32,34,36,33,24,14,4],
	        		color:'#1f7e92'
	        	},
	        	{
	        		name : '西安',
	        		value:[1,12,18,20,28,34,36,34,31,27,24,6],
	        		color:'#76a871'
	        	},
	        	{
	        		name : '天津',
	        		value:[3,13,14,20,28,32,34,36,30,24,14,4],
	        		color:'#6f83a5'
	        	}
	        ];
    
	var labels = ["一月","二月","三月","四月","五月","六月","七月","八月","九月","十月","十一月","十二月"];
	
		var chart = new iChart.Area2D({
			render :domNode,
			data: data,
			title : '四城市2012年平均温度情况',
			width : 800,
			height : 400,
			area_opacity:0.15,
			legend : {
				enable : true
			},
			tip:{
				enable : true,
				listeners:{
					 //tip:提示框对象、name:数据名称、value:数据值、text:当前文本、i:数据点的索引
					parseText:function(tip,name,value,text,i){
						return "<span style='color:#005268;font-size:11px;font-weight:600;'>"+name+
								"</span>&nbsp;<span style='color:#005268;font-size:20px;font-weight:600;'>"+value+"℃</span>";
					}
				}
			},
			sub_option:{
				label:false
			},
			crosshair:{
				enable:true,
				line_color:'#62bce9'
			},
			coordinate:{
				axis : {
					width : [0, 0, 2, 0]
				},
				background_color:'#ffffff',
				height:'90%',
				valid_width:'94%',
				height : 260,
				scale2grid:false,
				grids:{
					horizontal:{
							way:'share_alike',
							value:8
						}
					}, 
				scale:[{
					 position:'left',	
					 start_scale:0,
					 end_scale:40,
					 scale_space:5,
					 listeners:{
						parseText:function(t,x,y){
							return {text:t+"℃"}
						}
					}
				},{
					 position:'bottom',	
					 start_scale:1,
					 end_scale:12,
					 parseText:function(t,x,y){
						return {textY:y+10}
					 },
					 labels:labels
				}]
			}
		});
		chart.draw();
}

function commonArea2D(domNode){
	var data = [
	        	{
	        		name : '北京',
	        		value:[-9,1,12,20,26,30,32,29,22,12,0,-6],
	        		color:'#1f7e92',
	        		line_width:2
	        	}
	       ];
       
	var chart = new iChart.Area2D({
			render : domNode,
			data: data,
			title : '北京2012年平均温度情况',
			width : 560,
			height : 300,
			coordinate:{height:'90%',background_color:'#edf8fa'},
			sub_option:{
				hollow_inside:false,//设置一个点的亮色在外环的效果
				point_size:10
			},
			labels:["一月","二月","三月","四月","五月","六月","七月","八月","九月","十月","十一月","十二月"]
		});
	
	chart.draw();
}