function opens(obj){
for(var i = 1;i<=3;i++){
if(i == obj){
	document.getElementById("dis"+i).style.display="block"
}else
document.getElementById("dis"+i).style.display="none"
}
}