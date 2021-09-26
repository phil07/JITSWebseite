
var x = 0;
function dropDown(){
	if(x == 0){
	document.getElementById("dropdown").style.display="none";
	x = 1;
}else{
	document.getElementById("dropdown").style.display="block";
	x = 0;
	}
}