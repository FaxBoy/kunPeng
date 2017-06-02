/**
 * Created by Administrator on 2015/9/15.
 */
$(function(){
    $.fn.buildSidebarMenu = function(ds,p){
        p = $.extend({
            myiframe:"",
            ibg:["#007AFF","#FF9500","#4CD964","#5856D6","#A566FB","#F75655","#00C5D9","#FFEE55"],
            icbg:["#7928E8","#7928E8","#7928E8","#7928E8"]
        },p);
        mTree = {
            status:false,
            cidx:"",
            build:function(tds,pnt,lev){
                var ul = document.createElement("ul");
                $(ul).appendTo(pnt);
                $(tds).each(function(j,d){
                    li = document.createElement("li");
                    a = document.createElement("a");
                    i = document.createElement("i");
                    span= document.createElement("span");
                    $(li).appendTo(ul);
                    $(a).appendTo(li);
                    $(i).appendTo(a);
                    $(span).appendTo(a);
                    $(i).addClass(d.igclass).addClass(d.iclass);
                    $(span).append(d.cname);
                    ischild = d.childrens;
                    if(lev!=2){						
						$(ul).addClass("sidebar-menu");
						mTree.cidx=p.ibg[j];
						$(i).css({background: p.ibg[j]}).addClass("gcolor");
						$(li).addClass("treeview");
						$(li).bind("click",function(){
							$(this).siblings().removeClass("active");
							if(!$(this).children("ul").attr("class")){
								$(this).addClass("active");
							}
							$(this).children("ul").show();
							$(this).siblings().children("ul").hide();
							if(d.path){
								$("#"+p.myiframe).attr("src",d.path);
							}
						});
						
                    }else{
						$(ul).addClass("treeview-menu");
						if(mTree.status==false){
							$(ul).css({display:"block"});
							mTree.status=true;
						}
						$(li).bind("click",function(){
							$(this).siblings().removeClass("active")
							$(this).addClass("active");
							if(d.path){
								$("#"+p.myiframe).attr("src",d.path);
							}
						});
						$(i).css({color: mTree.cidx});
                    }
                    /*if(d.path){
						alert(d.path);
                        //$("#"+p.myiframe).attr("src",d.path);
                    }*/
                    if(ischild && ischild.length>0){
                        mTree.build(ischild,li,2);
                    }
									
					//初始化选中第一个
					if(d.cname==first){
						$(li).siblings().removeClass("active");
						if(!$(li).children("ul").attr("class")){
							$(li).addClass("active");
						}
						$(li).children("ul").show();
						$(li).siblings().children("ul").hide();
						if(d.path){
							$("#"+p.myiframe).attr("src",d.path);
						}
					}
										
                });				
            },
            builderTitle:function(tds,pnt){
                var divS = document.createElement("div");
                $(divS).addClass("sidebar-header");
                var divT = document.createElement("div");
                $(divT).appendTo(divS).addClass("treeview-heder");
                $(divT).html()
            },
            createMenu:function(tds,pnt){
                mTree.build(ds,pnt);
            }

        };
        $(this).children(".treeview-menu").empty().remove();
        $(this).children(".sidebar-menu").empty().remove();
        m = this;
		var first = null;
		if(ds[0].childrens&&ds[0].childrens.length>0){
			first = ds[0].childrens[0].cname;
		}else{
			first = ds[0].cname;
		}
        mTree.createMenu(ds,m);
    };
})