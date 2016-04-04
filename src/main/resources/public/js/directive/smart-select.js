angular.module('baoHiemApp').directive('smartSelect', 
	function() {
		return {
			restrict: 'E',
			scope: {
				danhSachData: '=',
				refreshFunction: '=',
				isDisabled: '='
			},
			template: '<ui-select theme="bootstrap" ng-disabled="isDisabled" > '+
						'<ui-select-match>{{$select.selected.ten}}</ui-select-match> '+
						'<ui-select-choices repeat="d in danhSachData" '+
							'refresh="refreshFunction($select.search)" refresh-delay="400"> '+
							'<div>{{d.ten}}</div> '+
						'</ui-select-choices> '+
					'</ui-select> '
		};
});