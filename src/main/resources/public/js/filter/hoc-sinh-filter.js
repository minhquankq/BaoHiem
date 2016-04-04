angular.module('baoHiemApp')
.filter('HocSinhFilter', function() {
	return function(dsHocSinh, lop, showSelected) {
		var filtered = [];
		angular.forEach(dsHocSinh, function(hs) {
	        if((showSelected==true && hs.duocChon==true) || (!showSelected && hs.maPB==lop))
	        	filtered.push(hs);
	    });
        return filtered;
	}
});