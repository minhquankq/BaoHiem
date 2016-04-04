angular.module('baoHiemApp', ['ngRoute', 'ngAnimate', 'ui.select', 'ngMask'])
.config([ '$routeProvider', function($routeProvider) {
	$routeProvider
	.when('/', {
		templateUrl : 'template/home.html',
		controller : 'HomeController'
	})
	.when('/hoc-sinh', {
		templateUrl : 'template/hoc-sinh/hs.html',
		controller : 'HocSinhController'
	})
	.when('/login', {
		templateUrl : 'template/login/login.html',
		controller : 'LoginController'
	})
	.when('/admin', {
		templateUrl : 'template/hoc-sinh/duyet-hs.html',
		controller : 'DuyetHocSinhController'
	})
	.otherwise({
		redirectTo : '/login'
	});
} ])
.factory('httpRequestInterceptor',function() {
	return {
		request : function(config) {
			var auth = localStorage.getItem("auth");
			if(auth) {
				auth = JSON.parse(auth);
				jQuery.extend(config.headers, auth);
			}

			return config;
		}
	};
})
.config([ '$httpProvider', function($httpProvider) {
	$httpProvider.interceptors.push('httpRequestInterceptor');
} ]);