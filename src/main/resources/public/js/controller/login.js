angular.module('baoHiemApp')
.controller('LoginController', [ '$scope', '$http', '$location',
	function($scope, $http, $location) {
		$scope.pageClass = 'page-login';
		$scope.maDonVi = '';
		$scope.matkhau = '';

		$scope.submitLogin = function() {
			var loginInfo = {};
			loginInfo.id = $scope.maDonVi;
			loginInfo.matkhau = CryptoJS.MD5($scope.matkhau).toString();
			$http.post('/api/donvi/login', loginInfo).then(
				function(response) { // success
					localStorage.setItem("auth", JSON.stringify(response.data));
					$location.path('/');
				},
				function(response) { // Error
					alert("error"); // TODO Will handle later
				}
			);
		}
	} 
]);