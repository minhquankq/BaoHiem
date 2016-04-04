angular.module('baoHiemApp')
.controller('HocSinhController', [ '$scope', '$http', '$location', 'Common', 
	function($scope, $http, $location, Common) {
		$scope.pageClass = 'page-hs';
		$scope.dsHocSinh = [];
		$scope.dsCot = [];
		Common.layDSCotChoTableHocSinh(function(data) {
			$scope.dsCot = data;
		});

		var auth = JSON.parse(localStorage.getItem("auth"));
		$scope.dsKhoi = {};
		$scope.layDanhSachHS = function() {
			$http.get('/api/hocsinh?maDonVi='+auth.id).then(
				function(response){
					$scope.dsHocSinh = response.data;
					$scope.dsKhoi = {};
					angular.forEach($scope.dsHocSinh, function(value) {
						var khoi = +value.maPB.match(/\d+/)[0];
						if(!$scope.dsKhoi[khoi]) {
							$scope.dsKhoi[khoi] = [value.maPB];
						}else {
							if ($scope.dsKhoi[khoi].indexOf(value.maPB) == -1) {
								$scope.dsKhoi[khoi].push(value.maPB);
							}
						}
					});
				},
				function(response) {
					console.log(response);
				}
			);
		};

		$scope.layDanhSachHS();

		// Sort table
		$scope.predicate = 'soDinhDanh';
		$scope.reverse = true;
		$scope.order = function(predicate) {
			$scope.reverse = ($scope.predicate === predicate) ? !$scope.reverse : false;
			$scope.predicate = predicate;
		};
		// Chon hoc sinh
		$scope.chonTatCa = false;
		
		$scope.chonTatCaClick = function(chonTatCa) {
			angular.forEach($scope.dsHocSinh, function(hs) {
				if(hs.maPB == $scope.lopDuocChon) {
					hs.duocChon = chonTatCa;
				}
			});
		};
		$scope.lopDuocChon = localStorage.getItem("lopDuocChon");
		$scope.chonKhoi =  $scope.lopDuocChon != null ? $scope.lopDuocChon.match(/\d+/)[0] : null;
		$scope.chonLop = function(lop) {
			$scope.lopDuocChon = lop;
			localStorage.setItem("lopDuocChon", $scope.lopDuocChon);
		};
		
		$scope.capNhatLop = function(lopMoi) {
			if(lopMoi) {
				var hsDuocChon = $scope.dsHocSinh.filter(function(hs) {return hs.duocChon;});
				if(hsDuocChon.length == 0) {
					alert("Chon it nhat 1 hoc sinh");
				} else {
					var dsId = [];
					for(var i=0; i<hsDuocChon.length; i++) {
						dsId.push(hsDuocChon[i].id);
					}
					$http.put('/api/hocsinh/'+lopMoi+'/cap-nhat-lop', dsId)
						 .then(function() {
							alert("OK");
							$scope.layDanhSachHS();
						}, function(response) {
							console.log(response);
						});
				}
			} else {
				alert("Nhap lop moi");
			}
			
		};
		
		$scope.styleHS = function(hs) {
			if(hs.trangThai == 'CHUA_DUYET')
				return 'warning';
			if(hs.trangThai == 'DA_DUYET')
				return 'info';
		};
		
		$scope.guiDuyetHS = function() {
			var hsDuocChon = $scope.dsHocSinh.filter(function(hs) {return hs.duocChon;});
			if(hsDuocChon.length == 0) {
				alert("Chon it nhat 1 hoc sinh");
			} else {
				var dsId = [];
				for(var i=0; i<hsDuocChon.length; i++) {
					dsId.push(hsDuocChon[i].id);
				}
				$http.put('/api/hocsinh/CHO_DUYET/cap-nhat-trang-thai', dsId)
					 .then(function() {
						alert("OK");
						$scope.layDanhSachHS();
					}, function(response) {
						console.log(response);
					});
			}
		};

		// Form
		// Show
		$scope.showMode = true; // TODO
		$scope.hocSinh = null;
		$scope.chonHocSinh = function(hocSinh) {
			$scope.hocSinh = hocSinh;
		};
		
		$scope.layData = function(url, ten) {
			$http.get(url).then(
				function(response){
					$scope[ten] = response.data;
				},
				function(response) {
					console.log(response);
				}
			);
		};

		// Edit and create
		// Quoc tich
		$scope.dsQuocTich = [];
		$scope.layDSQuocTich = function(tuKhoa) {
			if(tuKhoa) {
				$scope.layData('/api/quoctich?tuKhoa='+tuKhoa, "dsQuocTich");
			}
		};
		$scope.dsDanToc = [];
		$scope.layDSDanToc = function(tuKhoa) {
			if(tuKhoa) {
				$scope.layData('/api/dantoc?tuKhoa='+tuKhoa, "dsDanToc");
			}
		};
		$scope.dsTinh = [];
		$scope.layDSTinh = function(tuKhoa) {
			if(tuKhoa) {
				$scope.layData('/api/tinh?tuKhoa='+tuKhoa, "dsTinh");
			}
		};
		$scope.dsHuyen = [];
		$scope.layDSHuyen = function(tuKhoa) {
			if(tuKhoa) {
				$scope.layData('/api/huyen?tuKhoa='+tuKhoa+"&tinhId=" + $scope.editHS.tinh.id, "dsHuyen");
			}
		};
		$scope.dsXa = [];
		$scope.layDSXa = function(tuKhoa) {
			if(tuKhoa) {
				$scope.layData('/api/xa?tuKhoa='+tuKhoa+"&huyenId=" + $scope.editHS.huyen.id, "dsXa");
			}
		};
		$scope.dsNoiKCB = [];
		$scope.layDSNoiKCB = function(tuKhoa) {
			if(tuKhoa) {
				$scope.layData('/api/noi-kcb?tuKhoa='+tuKhoa+"&tinhId=" + $scope.editHS.tinh.id, "dsNoiKCB");
			}
		};
		$scope.isCreate = true;
		$scope.taoSoDinhDanh = function(hs) {
			return (hs.tinh != null ? hs.tinh.id : "") +
				(hs.huyen != null ? hs.huyen.id : "") +
				(hs.xa != null ? hs.xa.id : "") +
				(hs.khaiSinhSo || "") + (hs.soKhaiSinh || "");
		};

		$scope.luuData = function(hs) {
			// Luu dan toc
			localStorage.setItem("danToc", JSON.stringify(hs.danToc));
			// luu quoc tich
			localStorage.setItem("quocTich", JSON.stringify(hs.quocTich));
			// luu tinh
			localStorage.setItem("tinh", JSON.stringify(hs.tinh));
			// luu huyen
			localStorage.setItem("huyen", JSON.stringify(hs.huyen));
			// luu xa
			localStorage.setItem("xa", JSON.stringify(hs.xa));
			// noi kham chua benh
			localStorage.setItem("noiKCB", JSON.stringify(hs.noiKCB));
		};

		$scope.editHS = {};
		$scope.createHS = function() {
			$scope.showMode = false;
			$scope.isCreate = true;
			$scope.editHS = {};
			$scope.editHS.donVi = auth; // TODO get don vi
			$scope.editHS.danToc = JSON.parse(localStorage.getItem("danToc"));
			$scope.editHS.quocTich = JSON.parse(localStorage.getItem("quocTich"));
			$scope.editHS.tinh = JSON.parse(localStorage.getItem("tinh"));
			$scope.editHS.huyen = JSON.parse(localStorage.getItem("huyen"));
			$scope.editHS.xa = JSON.parse(localStorage.getItem("xa"));
			$scope.editHS.noiKCB = JSON.parse(localStorage.getItem("noiKCB"));
			
		};

		$scope.capNhatHS = function() {
			$scope.showMode = false;
			$scope.isCreate = false;
			$scope.editHS = angular.copy($scope.hocSinh);
		};

		$scope.luu = function() {
			console.log("Luu hoc sinh");
			$scope.editHS.soDinhDanh = $scope.taoSoDinhDanh($scope.editHS);
			$scope.editHS.ngaySinh = Common.formatDate($scope.editHS.ngaySinh);
			if($scope.isCreate) {
				// Them moi hoc sinh
				console.log("so dinh danh " + $scope.editHS.soDinhDanh);
				$scope.luuData($scope.editHS);
				$http.post("/api/hocsinh", $scope.editHS).then(
					function(response){
						$scope.layDanhSachHS();
						$scope.showMode =true;
						$scope.hocSinh = response.data;
					},
					function(response) {
						console.log(response);
					}
				);
			} else {
				// Cap nhat thong tin hoc sinh
				$http.put("/api/hocsinh/"+$scope.editHS.id, $scope.editHS).then(
						function(response){
							$scope.layDanhSachHS();
							$scope.showMode =true;
							$scope.hocSinh = response.data;
						},
						function(response) {
							console.log(response);
						}
					);
			}
		};
		$scope.huy = function() {
			$scope.showMode = true;
		}
	} 
]);