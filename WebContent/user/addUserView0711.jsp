<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<!-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! addUserView �� �� �� !!!!!!!!!!!!! -->
<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
<!-- 	<link rel="stylesheet" type="text/css" href="assets/css/main.css"> -->
	
	
	<!-- ���� : http://getbootstrap.com/css/   ���� -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	<!--  ///////////////////////// Bootstrap 4.4, jQuery 3.1.1 CDN ////////////////////////// -->
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" 
			rel="stylesheet" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" 
			crossorigin="anonymous">
	
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" 
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	
	
	<!--  ///////////////////////// CSS, JS 4.4 CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" 
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" 
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" 
integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" 
integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	
	
	
	<!--  ///////////////////////// datePicker ////////////////////////// -->
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!--  	<link rel="stylesheet" href="/resources/demos/style.css"> -->
 	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
 	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
	
		//============= "����"  Event ���� =============
		 $(function() {
			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$( '#signUp' ).on("click" , function() {
				fncAddUser();
			});
		});	
		
		//============= "���"  Event ó�� ��  ���� =============
		$(function() {
			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$("a[href='#' ]").on("click" , function() {
				$("form")[0].reset();
			});
		});	
		
		function fncAddUser() {
			
			var id=$("input[name='userId']").val();
			var pw=$("input[name='password']").val();
			var pw_confirm=$("input[name='password2']").val();
			var name=$("input[name='name']").val();
			var nickname=$("input[name='nickname']").val();
			var gender=$("input[name='gender']").val();
			var birth=$("input[name='birth']").val();
			var schoolNo=$("input[name='schoolNo']").val();
			var mail=$("input[name='mail']").val();
			// ���� ���� ������ �Ǵ��ϱ� ���� Flag 
// 			var mailValue = $("input[name='mailValue']").val();
		
// 			// 1�� �� ���� ���� �Ϸ��̹Ƿ� �� �� Ȥ�� ���� ������ �������� ���� ��� �ٷ� ����
// 			if ( mailValue == "" || mailValue != "1" ) { 
// 				$("h6").text("���� ������ �������ּ���.");
// 				return;
// 			}
			
			if(id == null || id.length <1){
				alert("���̵�� �ݵ�� �Է��ϼž� �մϴ�.");
				return;
			}
			if(pw == null || pw.length <1){
				alert("�н������  �ݵ�� �Է��ϼž� �մϴ�.");
				return;
			}
			if(pw_confirm == null || pw_confirm.length <1){
				alert("�н����� Ȯ����  �ݵ�� �Է��ϼž� �մϴ�.");
				return;
			}
			if(name == null || name.length <1){
				alert("�̸���  �ݵ�� �Է��ϼž� �մϴ�.");
				return;
			}
			
			if(nickname == null || nickname.length <1){
				alert("�г�����  �ݵ�� �Է��ϼž� �մϴ�.");
				return;
			}
			
			if(gender == null || gender.length <1){
				alert("������  �ݵ�� �Է��ϼž� �մϴ�.");
				return;
			}
			
			if(birth == null || birth.length <1){
				alert("������  �ݵ�� �Է��ϼž� �մϴ�.");
				return;
			}
			
			if(schoolNo == null || schoolNo.length <1){
				alert("�б���  �ݵ�� �Է��ϼž� �մϴ�.");
				return;
			}
			
			if(mail == null || mail.length <1){
				alert("������  �ݵ�� �Է��ϼž� �մϴ�.");
				return;
			}
			
			if( pw != pw_confirm ) {				
				alert("��й�ȣ Ȯ���� ��ġ���� �ʽ��ϴ�.");
				$("input:text[name='password2']").focus();
				return;
			}
				
			var value = "";	
			if( $("input:text[name='phone2']").val() != ""  &&  $("input:text[name='phone3']").val() != "") {
				var value = $("option:selected").val() + "-" 
									+ $("input[name='phone2']").val() + "-" 
									+ $("input[name='phone3']").val();
			}

			$("input:hidden[name='phone']").val( value );

			$("form").attr("method" , "POST").attr("action" , "/user/addUser").submit();
		}
		

		//==>"�̸���" ��ȿ��Check  Event ó�� �� ����=============================�ȵ�!!!!!!!!!!!!!!!!!!!!!!!!!!
		 $(function() {
			 
			 $("input[name='mail']").on("change" , function() {
				
				 var mail=$("input[name='mail']").val();
			    
				 if(mail != "" && (mail.indexOf('@') < 1 || mail.indexOf('.') == -1) ){
			    	alert("�̸��� ������ �ƴմϴ�.");
			     }
			});
		});	
		
		
	 	//==>"ID�ߺ�Ȯ��" Event ó�� �� ����
			var checkId = 0;
		    //���̵� üũ�Ͽ� ���Թ�ư ��Ȱ��ȭ, �ߺ�Ȯ��.
		    function checkDuplicationUserId() {
		        var inputed = $('#userId').val();
		        console.log(inputed);
		        $.ajax({
		            data : {
		                userId : inputed
		            },
		            url : "/user/rest/checkDuplicationUserId",
		            method : 'GET',
		            success : function(data) {
		                if(data == true) {
		                    $("#userId").css("background-color", "#B0F6AC"); //�ʷ�
		                    $(".btn btn-outline-info btn-lg").prop("disabled", true);
	                         $(".btn btn-outline-info btn-lg").css("background-color", "#4CAF50"); //�ʷ�
		                    checkId = true;
		                }else {
		                    $("#userId").css("background-color", "#FFCECE"); //����
		                    $(".btn btn-outline-info btn-lg").prop("disabled", false);
		                    $(".btn btn-outline-info btn-lg").css("background-color", "#aaaaaa"); //ȸ��
		                    checkId = false;
	                         signupCheck();
		                }
		            },
		            error : function(){
		            	alert("����");
		            }
		        });
		    }		
		    
		    
		    
		  //==>"Nickname �ߺ�Ȯ��" Event ó�� �� ����
		    var checkNick = 0;
		    // üũ�Ͽ� ���Թ�ư ��Ȱ��ȭ, �ߺ�Ȯ��.
		    function checkDuplicationNickname() {
		        var inputed = $('#nickname').val();
		        console.log(inputed);
		        $.ajax({
		            data : {
		            	nickname : inputed
		            },
		            url : "/user/rest/checkDuplicationNickname",
		            method : 'GET',
		            success : function(data) {
		                if(data == true) {
		                    $("#nickname").css("background-color", "#B0F6AC"); //�ʷ�
		                    $(".btn btn-outline-info btn-lg").prop("disabled", true);
	                         $(".btn btn-outline-info btn-lg").css("background-color", "#4CAF50"); //�ʷ�
		                    checkId = true;
		                }else {
		                    $("#nickname").css("background-color", "#FFCECE"); //����
		                    $(".btn btn-outline-info btn-lg").prop("disabled", false);
		                    $(".btn btn-outline-info btn-lg").css("background-color", "#aaaaaa"); //ȸ��
		                    checkId = false;
	                         signupCheck();
		                }
		            },
		            error : function(){
		            	alert("����");
		            }
		        });
		    }		
		    
		    
		    
		  //==>"mail �ߺ�Ȯ��" Event ó�� �� ����
		    var mail = 0;
		    // üũ�Ͽ� ���Թ�ư ��Ȱ��ȭ, �ߺ�Ȯ��.
		    function checkDuplicationMail() {
		        var inputed = $('#mail').val();
		        console.log(inputed);
		        $.ajax({
		            data : {
		            	mail : inputed
		            },
		            url : "/user/rest/checkDuplicationMail",
		            method : 'get',
		            success : function(data) {
		                if(data == true) {
		                    $("#mail").css("background-color", "#B0F6AC"); //�ʷ�
		                    $(".btn btn-outline-info btn-lg").prop("disabled", true);
	                         $(".btn btn-outline-info btn-lg").css("background-color", "#4CAF50"); //�ʷ�
		                    checkId = true;
		                }else {
		                    $("#mail").css("background-color", "#FFCECE"); //����
		                    $(".btn btn-outline-info btn-lg").prop("disabled", false);
		                    $(".btn btn-outline-info btn-lg").css("background-color", "#aaaaaa"); //ȸ��
		                    checkId = false;
	                         signupCheck();
		                }
		            },
		            error : function(){
		            	alert("����");
		            }
		        });
		    }		
		    
// 		//==>"ID�ߺ�Ȯ��" Event ó�� �� ����
// 		 $(function() {
// 			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
// 			 $("button#checkId").on("click" , function() {
// 				popWin 
// 				= window.open("/user/checkDuplicationUserId.jsp",
// 											"popWin", 
// 											"left=300,top=200,width=780,height=130,marginwidth=0,marginheight=0,"+
// 											"scrollbars=no,scrolling=no,menubar=no,resizable=no");
// 			});
// 		});	
		
//  		//==>"Nickname�ߺ�Ȯ��" Event ó�� �� ����
//  		 $(function() {
//  			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
//  			 $("button#checkNick").on("click" , function() {
//  				popWin 
//  				= window.open("/user/checkDuplicationNickname.jsp",
//  											"popWin", 
//  											"left=300,top=200,width=780,height=130,marginwidth=0,marginheight=0,"+
//  											"scrollbars=no,scrolling=no,menubar=no,resizable=no");
//  			});
//  		});	
		
		//==>"�б� �ּ�ã��" Event ó�� �� ����
		 $(function() {
			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			 $("button#checkSchool").on("click" , function() {
				popWin 
				= window.open("/user/checkDuplicationUserId.jsp",
											"popWin", 
											"left=300,top=200,width=780,height=130,marginwidth=0,marginheight=0,"+
											"scrollbars=no,scrolling=no,menubar=no,resizable=no");
			});
		});	
		
		
		
	/////////////////////////////////////////�����̰� �ǵ� ��������/////////////////////////////////////////////////////////	
	/////////////////////////////////////////�����̰� �ǵ� ��������/////////////////////////////////////////////////////////	
	/////////////////////////////////////////�����̰� �ǵ� ��������/////////////////////////////////////////////////////////	
	/////////////////////////////////////////�����̰� �ǵ� ��������/////////////////////////////////////////////////////////	
	/////////////////////////////////////////�����̰� �ǵ� ��������/////////////////////////////////////////////////////////	
	/////////////////////////////////////////�����̰� �ǵ� ��������/////////////////////////////////////////////////////////	
	/////////////////////////////////////////�����̰� �ǵ� ��������/////////////////////////////////////////////////////////	
	/////////////////////////////////////////�����̰� �ǵ� ��������/////////////////////////////////////////////////////////	
	/////////////////////////////////////////�����̰� �ǵ� ��������/////////////////////////////////////////////////////////	
	/////////////////////////////////////////�����̰� �ǵ� ��������/////////////////////////////////////////////////////////	
		
		
		
		
		//==>"phone ��������" Event ó�� �� ����
		 $(function() {
			 $("button#checkPhone").on("click" , function() {
				 var phone = $('#phone').val();
				 if(isNaN(phone) || phone==''){
					 console.log('��ȣ�� ����� �Է�����!');
				 }else{
					 $('#phoneNumberCheckBox').remove();
					var view=
							"<div class='form-group' id='phoneNumberCheckBox'>"
							+ "<label for='phone' class='col-md-offset-1 col-md-3 control-label'>������ȣ �Է�</label>"
							+ "<div class='col-sm-4'>"
							+ "<input type='text' class='form-control' id='code' name='code' placeholder='������ȣ�� �Է����ּ���.'>"
							+ "</div>"
							+ "<div class='col-sm-3'>"
							+ "<button type='button' class='btn btn-outline-warning' id='codeNumberCheck'>�����Ϸ�</button>"
							+ "</div>"
							+ "</div>";
						$('#phoneCheckAppend').after(view);
						$.ajax({
							url : "/userrrrrr/rest/sendSms",
							dataType : 'json',
							data : {receiver : phone},
							success : function(data){
								$('#phone').attr('readonly' ,true);
							},
							error : function(){
								console.log('error');
							}
						});
				 }
			});
		});
			 $(document).on("click",'#codeNumberCheck', function(){
				 var code = $('#code').val();
				 $.ajax({
						url : "/userrrrrr/rest/smsCheck",
						data : {code : code},
						success : function(data){
							if(data == true){
								//�����Ϸ� ��
								var view = "<h1><span>������ �Ϸ�Ǿ����ϴ�</span></h1>"
								$('body').after(view);
							}else{
								//���� Ʋ���� ������ �̻ڰ� Ʋ�ȴٰ� �˷��ּ���! 
								var view = "<span>������ȣ�� �ٽ� Ȯ�����ּ���.</span>"
							}
						},
						error : function(){
							console.log('error');
						}
					});
			 });

		/////////////////////////////////////////�����̰� �ǵ� ��������/////////////////////////////////////////////////////////	
		/////////////////////////////////////////�����̰� �ǵ� ��������/////////////////////////////////////////////////////////	
		/////////////////////////////////////////�����̰� �ǵ� ��������/////////////////////////////////////////////////////////	
		/////////////////////////////////////////�����̰� �ǵ� ��������/////////////////////////////////////////////////////////	
		/////////////////////////////////////////�����̰� �ǵ� ��������/////////////////////////////////////////////////////////	
		/////////////////////////////////////////�����̰� �ǵ� ��������/////////////////////////////////////////////////////////	
		/////////////////////////////////////////�����̰� �ǵ� ��������/////////////////////////////////////////////////////////	
		/////////////////////////////////////////�����̰� �ǵ� ��������/////////////////////////////////////////////////////////	
		/////////////////////////////////////////�����̰� �ǵ� ��������/////////////////////////////////////////////////////////	
		/////////////////////////////////////////�����̰� �ǵ� ��������/////////////////////////////////////////////////////////			

		// 		//==>"mail �ߺ�üũ" Event ó�� �� ����
		// 		 $(function() {
		// 			//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
		// 			 $("button#checkMail").on("click" , function() {
		// 				popWin 
		// 				= window.open("/user/checkDuplicationMail.jsp",
		// 											"popWin", 
		// 											"left=300,top=200,width=780,height=130,marginwidth=0,marginheight=0,"+
		// 											"scrollbars=no,scrolling=no,menubar=no,resizable=no");
		// 			});
		// 		});	

		//==>"mail ��������" Event ó�� �� ���� =====
		$(function() {
			// �̸��� �Է� �� ������ȣȮ�� ��ư�� ������ �ʵ��� hide 
			$("button.btn.btn-primary:contains('������ȣȮ��')").hide();

			// 		$( "button.btn.btn-primary:contains('����')" ).on("click" , function() {
			// 			fncAddUser();
			// 		});

			// 		$( "button.btn.btn-primary:contains('��������')" ).on("click" , function() {
			$("button#sendMail")
					.on(
							"click",
							function() {
								var mail = $("input[name='mail']").val();
								console.log(mail);

								$
										.ajax({
											url : "/user/rest/checkMail",
											method : "post",
											dataType : "JSON",
											headers : {
												"Accept" : "application/json",
												"Content-Type" : "application/json"
											},
											data : JSON.stringify({
												mail : mail
											}),
											// beforeSend :: request ���� ���� �����ϴ� call back function 
											beforeSend : function() {
												$("h6")
														.text(
																"���� �߼� ���Դϴ�... ��ø� ��ٷ� �ּ���.");
											},
											success : function(JSONData, Status) {
												// ������ ���������� ������ �� returnMap.put("result", "done");
												if (JSONData.result == "done") {
													// �̸��� �Է� ĭ�� ������ȣ�Է�ĭ���� �ٲٹǷ� �Է��� �̸����� ����ϴ� input type hidden ���� ���� 
													$("input[name='mail']")
															.val(
																	$(
																			"input[name='mail']")
																			.val());

													$("input[name='mail']")
															.val("");
													$("#mail").text("������ȣ�Է�");

													// ���������� state�� returnMap.put("mailCheck", state);�� ��ȯ�����Ƿ� �ش� ���� input type hidden�� ���
													$("input[name='mailCheck']")
															.val(
																	JSONData.mailCheck);

													// ���� �̸��Ϸ� ���� �߼� ��ü�� �����ϹǷ� �̿� ���� �߰����� Business Logic�� �ʿ��� 
													$("h6")
															.text(
																	"���� �߼��� �Ϸ�Ǿ����ϴ�. ������ Ȯ���� �ּ���. ������ ���� �� �ٽ� �߼� ��ư�� �Է����ּ���.");

													$("button#sendMail")
															.remove();
													$(
															"button.btn.btn-primary:contains('������ȣȮ��')")
															.show();
													$("input[name='mail']")
															.attr(
																	"placeholder",
																	"������ȣ �Է�");
												}
											}
										})
							});

			$("button.btn.btn-primary:contains('������ȣȮ��')").on("click",
					function() {
						var mailValue = $("input[name='mail']").val();
						var mailCheck = $("input[name='mailCheck']").val();

						console.log("�񱳴�� �� : " + mailCheck);
						console.log("�Է� �� : " + mailValue);

						// mailCheck�� �̸��� ���� ���ڿ� state�̸� 
						// mailValue�� �̸��� ���� ������ �Ǵ��ϴ� Flag�̴� 

						// mailCheck�� default�� null String�̹Ƿ� 
						if (mailCheck == "") {
							$("h6").text("������ �߼۵��� �ʾҽ��ϴ�.");
						}

						if (mailCheck != "") {
							if (mailCheck == mailValue) {
								$("input[name='mailValue']").val("1");
								$("h6").text("�����Ǿ����ϴ�.");
								$("input[name='mail']").attr("readonly", true);
							}

							if (mailCheck != mailValue) {
								$("h6").text("���� ���ڰ� Ʋ�Ƚ��ϴ�. �ٽ� Ȯ�����ּ���.");
							}
						}
					});
		});

		$(function() {
			$("a[href='#']").on("click", function() {
				$("form")[0].reset();
			});
		});
		//==>"mail ��������" Event ó�� �� ���� =====
	</script>		
    
    <!--  ///////////////////////// datePicer ////////////////////////// -->
  <script>
  $( function() {
    $( "#birth" ).datepicker({
      changeMonth: true,
      changeYear: true,
      yearRange: "2000:2020"
    });
  } );
  </script>
  
  <script>
  $(document).ready(function(){

		 $("#fileInput").on('change', function(){  // ���� ����Ǹ�

		 if(window.FileReader){  // modern browser

		 var profileName = $(this)[0].files[0].name;

		 } else {  // old IE

		 var profileName = $(this).val().split('/').pop().split('\\').pop();  // ���ϸ� ����

		 }

		 

		 // ������ ���ϸ� ����

		 $("#userfile").val(profileName);
		 });
		
	});
  </script>
  
  
  
     
</head>

<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<div class="navbar  navbar-default" id="top">
        	<a class="navbar-brand" href="/index.jsp" ><h3>��'�︲</h3></a>
<!--         	<img src="./images/twitter_header_photo_1.jpg"> -->
<!-- �̹��� �߰� -->

   	</div>	
   	<!-- ToolBar End /////////////////////////////////////-->	


	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
<!-- 	<div class="container"> -->
	
<!-- 		<h1 class="bg-primary text-center">ȸ �� �� ��</h1> -->
		
		
		<!-- form Start /////////////////////////////////////-->
		<form class="form-horizontal" enctype="multipart/form-data">
		<div class="form-group">
		  <div class="form-group">
		    <label for="userId" class="col-sm-offset-1 col-sm-3 control-label" >* �� �� ��</label>
<!-- 		    <label for="userId" class="col-sm-offset-1 col-sm-3 control-label" style="color:orange">* �� �� ��</label> -->
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="userId" name="userId" oninput="checkDuplicationUserId()">
		      <span id = "checkMsg"></span> 
		      
<!-- 		      	<strong class="text-danger">�Է��� �ߺ�Ȯ�� ����..</strong> -->
		    </div>
<!-- 		    <div class="col-sm-3"> -->
<!-- 		      <button type="button" class="btn btn-info" id="checkId">�ߺ�Ȯ��</button> -->
<!-- 		    </div> -->
		  </div>
		  
		  
		  <div class="form-group">
		    <label for="password" class="col-sm-offset-1 col-sm-3 control-label" >* ��й�ȣ</label>
<!-- 		    <label for="password" class="col-sm-offset-1 col-sm-3 control-label" style="color:orange">* ��й�ȣ</label> -->
		    <div class="col-sm-4">
		      <input type="password" class="form-control" id="password" name="password" placeholder="��й�ȣ">
		    </div>
		  </div>
		  
		  
		  <div class="form-group">
		    <label for="password2" class="col-sm-offset-1 col-sm-3 control-label">* ��й�ȣ Ȯ��</label>
<!-- 		    <label for="password2" class="col-sm-offset-1 col-sm-3 control-label" style="color:orange">* ��й�ȣ Ȯ��</label> -->
		    <div class="col-sm-4">
		      <input type="password" class="form-control" id="password2" name="password2" placeholder="��й�ȣ Ȯ��">
		    </div>
		  </div>
		  
		  
		  <div class="form-group">
		    <label for="name" class="col-sm-offset-1 col-sm-3 control-label" >* �̸�</label>
<!-- 		    <label for="name" class="col-sm-offset-1 col-sm-3 control-label" style="color:orange">* �̸�</label> -->
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="name" name="name" placeholder="ȸ���̸�">
		    </div>
		  </div>
		  
		  
		  <div class="form-group">
		    <label for="nickname" class="col-sm-offset-1 col-sm-3 control-label" >* �г���</label>
<!-- 		    <label for="nickname" class="col-sm-offset-1 col-sm-3 control-label" style="color:orange">* �г���</label> -->
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="nickname" name="nickname" oninput="checkDuplicationNickname()">
		    </div>
<!-- 		    <div class="col-sm-3"> -->
<!-- 		      <button type="button" class="btn btn-info" id="checkNick">�ߺ�Ȯ��</button> -->
<!-- 		    </div> -->
		  </div>
		  
		  
		  <div class="form-group">
		    <label for="schoolNo" class="col-sm-offset-1 col-sm-3 control-label" >* �б�</label>
<!-- 		    <label for="schoolNo" class="col-sm-offset-1 col-sm-3 control-label" style="color:orange">* �б�</label> -->
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="schoolNo" name="schoolNo" placeholder="�б�">
		    </div>
		    <div class="col-sm-3">
		      <button type="button" class="btn btn-outline-warning" id="checkSchool">�ּ�ã��</button>
<!-- 		      <button type="button" class="btn btn-info" id="checkSchool">�ּ�ã��</button> -->
		    </div>
		  </div>
		  
		  
		  
		  
		  
		  <!-- �����̰� �ǵ�       ---------------------------------------------------------------------------------- -->
		  <!-- �����̰� �ǵ�       ---------------------------------------------------------------------------------- -->
		  <!-- �����̰� �ǵ�       ---------------------------------------------------------------------------------- -->
		  <!-- �����̰� �ǵ�       ---------------------------------------------------------------------------------- -->
		  <!-- �����̰� �ǵ�       ---------------------------------------------------------------------------------- -->
		  <!-- �����̰� �ǵ�       ---------------------------------------------------------------------------------- -->
		  <!-- �����̰� �ǵ�       ---------------------------------------------------------------------------------- -->
		  <!-- �����̰� �ǵ�       ---------------------------------------------------------------------------------- -->
		  <!-- �����̰� �ǵ�       ---------------------------------------------------------------------------------- -->
		  
		  <div class="form-group" id="phoneCheckAppend">
		    <label for="phone" class="col-md-offset-1 col-md-3 control-label">�޴���ȭ��ȣ</label>
<!-- 		    <label for="phone" class="col-md-offset-1 col-md-3 control-label" style="color:orange">�޴���ȭ��ȣ</label> -->
		     <div class="col-sm-4">
		      	<input type="text" class="form-control" id="phone" name="phone" placeholder="- �� �����ϰ� �Է����ּ���.">
		    </div>
		    <div class="col-sm-3">
		      <button type="button" class="btn btn-outline-warning" id="checkPhone">��������</button>
		    </div>
		  </div>

		  
		  <!-- �����̰� �ǵ�       ---------------------------------------------------------------------------------- -->
		  <!-- �����̰� �ǵ�       ---------------------------------------------------------------------------------- -->
		  <!-- �����̰� �ǵ�       ---------------------------------------------------------------------------------- -->
		  <!-- �����̰� �ǵ�       ---------------------------------------------------------------------------------- -->
		  <!-- �����̰� �ǵ�       ---------------------------------------------------------------------------------- -->
		  <!-- �����̰� �ǵ�       ---------------------------------------------------------------------------------- -->
		  <!-- �����̰� �ǵ�       ---------------------------------------------------------------------------------- -->
		  <!-- �����̰� �ǵ�       ---------------------------------------------------------------------------------- -->
		  <!-- �����̰� �ǵ�       ---------------------------------------------------------------------------------- -->





		  
		  
		  <div class="form-group">
		    <label for="birth" class="col-sm-offset-1 col-sm-3 control-label" >* ����</label>
<!-- 		    <label for="birth" class="col-sm-offset-1 col-sm-3 control-label" style="color:orange">* ����</label> -->
		    <div class="col-sm-4">
		      <input type="text"  class="form-control" id="birth" name="birth"  placeholder="������ �޷¿��� �����ϼ���.">
		    </div>
		  </div>
		  
		  
		  <div class="form-group">
		    <label for="gender" class="col-sm-offset-1 col-sm-3 control-label" >* ����</label>
<!-- 		    <label for="gender" class="col-sm-offset-1 col-sm-3 control-label" style="color:orange">* ����</label> -->
		    <div class="col-sm-4">
		    <input type="radio" name="gender" value="1"> ���� &nbsp;
		    <input type="radio" name="gender" value="2"> ����
		    </div>
		  </div>
		  
		  
		   <div class="form-group">
		    <label for="mail" class="col-sm-offset-1 col-sm-3 control-label"> �̸���</label>
<!-- 		    <label for="mail" class="col-sm-offset-1 col-sm-3 control-label" style="color:orange">�̸���</label> -->
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="mail" name="mail"  oninput="checkDuplicationMail()" >
		    </div>
<!-- 		    <div class="col-sm-3"> -->
<!-- 		      <button type="button" class="btn btn-info" id="checkMail">�ߺ�Ȯ��</button> -->
<!-- 		    </div> -->
		    
		    <div class="form-group" >
		    <div class="col-sm-offset-4  col-sm-4 text-center">
		    <label for="profileName" class="col-sm-offset-1 col-sm-3 control-label" > �� ��</label>
<!-- 		    <label for="profileName" class="col-sm-offset-1 col-sm-3 control-label" style="color:orange"> �� ��</label> -->
		    <div class="col-sm-4">
		     	<input name="file" id="fileInput"  type="file" data-class-button="btn btn-default" data-class-input="form-control" data-button-text="" data-icon-name="fa fa-upload" class="form-control" tabindex="-1" style="position: absolute; clip: rect(0px 0px 0px 0px);">
					<div class="bootstrap-filestyle input-group">
						<input type="text" id="userfile" class="form-control" name="userfile" disabled="">
						<span class="group-span-filestyle input-group-btn" tabindex="0">
							<label for="fileInput" class="btn btn-default ">
								<span class="glyphicon fa fa-upload"></span>
							</label>
						</span>
					</div>
		    	</div>
		     </div>
		    
			<!-- 		    ���Ϸ� ������ȣ ���� -->
		    <div class="col-sm-3">
		    	<button type="button" class="btn btn-outline-warning" id="sendMail">��������</button>
<!-- 		    	<button type="button" class="btn btn-info" id="sendMail">��������</button> -->
		    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		    	<button type="button" class="btn btn-outline-warning">������ȣȮ��</button>
<!-- 		    	<button type="button" class="btn btn-info">������ȣȮ��</button> -->
		    	<input type="hidden" name="mailValue" value="">
		    	<input type="hidden" name="mailCheck" value="">
		    	<input type="hidden" name="mail1" value="">
		    </div>
		    <!-- 		    ���Ϸ� ������ȣ ���� -->
		    
		  </div>
		  </div>
<!-- 		  </div> -->
		  
		  <div class="form-group">
		    <div class="col-sm-offset-4  col-sm-4 text-center">
<!-- 		     <button type="submit" id="signUp"	class="btn btn-outline-info btn-lg" disabled="disabled">Sign Up</button> -->
		     <button type="submit" id="signUp"	class="btn btn-outline-info btn-lg" >Sign Up</button>
<!-- 		      <button type="button" class="btn btn-primary"  >�� &nbsp;��</button> -->
			  <a class="btn btn-outline-info btn-lg btn" href="#" role="button">��&nbsp;��</a>
		    </div>
		  </div>
		  </div>
		</form>
		
		<!-- form Start /////////////////////////////////////-->
		
	<!--  ȭ�鱸�� div end /////////////////////////////////////-->

</body>

</html>