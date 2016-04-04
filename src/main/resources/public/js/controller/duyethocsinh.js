angular.module('baoHiemApp')
.controller('DuyetHocSinhController', [ "$scope", "$http", "Common",
	function($scope, $http, Common) {
		// CONSTANTS
		var layHSCanDuyetURL = "/api/hocsinh/lay-hs-can-duyet"; // + "?maCoSo=<ma co so>
		// COMMON FUNCTIONS
		var layDSHSCanDuyet = function(maCoSo, callback) {
			$http.get(layHSCanDuyetURL + "?maCoSo=" +auth.coSo.id)
				 .then(
					 function(response){
						 callback(response.data);
					 } , 
					 function(response){
						 callback([]);
						 console.log(response);
					 }
				);
		};
		
		// HANDLE FUNCTION
		$scope.dsCot = [];
		$scope.dsHocSinh = [];
		$scope.pageClass = 'page-hs';

		var auth = JSON.parse(localStorage.getItem("auth"));

		this.layDSHSCanDuyet(function(dsHocSinh) {
			$scope.dsHocSinh = dsHocSinh;
		});

		Common.layDSCotChoTableHocSinh(function(data) {
			$scope.dsCot = data;
		});
	}
]);