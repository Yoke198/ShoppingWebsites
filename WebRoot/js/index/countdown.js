	
	var overDate = 1000 * 60 * 60 * 24 * 1/24/30; //��ֹʱ��:Ϊ��ǰ�����ʱ��+3��  
	var NowTime = new Date();
	//var EndTime= new Date(2012,06,24,0,0);  //��ֹʱ�䣺Ϊ�̶�ʱ��  
	var EndTime = new Date(NowTime.getTime() + overDate);
	var EndTimeMsg = 
	EndTimeMsg = EndTimeMsg + (EndTime.getMinutes()) + "��";
	EndTimeMsg = EndTimeMsg + (EndTime.getSeconds()) + "��";

	function GetRTime(counts) {
		NowTime = new Date();
		var nMS = EndTime.getTime() - NowTime.getTime();
		var nM = Math.floor(nMS / (1000 * 60)) % 60;
		var nS = Math.floor(nMS / 1000) % 60;
		var nMS = Math.floor(nMS / 100) % 10;
		if (nM >= 0 && nS >= 0 && nMS >= 0) {
			document.getElementById(counts).innerHTML = nM+":"+nS+":"+nMS;
		} else {
			
		}
		setTimeout("GetRTime('"+counts+"')", 100);
	}

	window.onload = function() {

		GetRTime("counts1");
		GetRTime("counts2");
		GetRTime("counts3");
		GetRTime("counts4");
		GetRTime("counts5");
		GetRTime("counts6");

	}