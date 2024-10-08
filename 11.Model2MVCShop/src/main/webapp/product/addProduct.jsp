<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<%-- 
 	Product prod = (Product)request.getAttribute("prod");
 	User user = (User) request.getSession().getAttribute("user");
 --%>
    
<!DOCTYPE html>

<html lang="ko">

<head>
	<meta charset="EUC-KR">
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	<style>
       body > div.container{
        	border: 3px solid #D6CDB7;
            margin-top: 10px;
        }
    </style>
	
	
	<script type="text/javascript">
	
	
	$(function(){ //Ȯ�� Event
		$( "button.btn.btn-primary" ).on("click" , function() {
			window.location.href = "/product/listProduct?menu=${manage}";
		});
	});
	
	$(function() { // �߰���� Event
		$("a[href='#' ]").on("click" , function() {
			self.location ="/product/addProduct?=product=${product.prodName}"
		});
	})
	
	
	
	
	</script>
	

</head>

<body>

<jsp:include page="/layout/toolbar.jsp" />

<div class="container">
	
		<h1 class="bg-primary text-center">�� ǰ �� ��</h1>
		<form class="form-horizontal">

		  <div class="form-group">
		    <label for="userName" class="col-sm-offset-1 col-sm-3 control-label">��ǰ��</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="prodName" name="prodName" placeholder="${product.prodName}">
		    </div>
		  </div>
			
			 <div class="form-group">
		    <label for="userName" class="col-sm-offset-1 col-sm-3 control-label">��ǰ������</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="prodDetail" name="prodDetail" placeholder="${product.prodDetail}">
		    </div>
		  </div>

			  <div class="form-group">
		    <label for="userName" class="col-sm-offset-1 col-sm-3 control-label">��������</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="manuDate" name="manuDate" placeholder="${product.manuDate}">
		    </div>
		  </div>

	 	 <div class="form-group">
		    <label for="userName" class="col-sm-offset-1 col-sm-3 control-label">����</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="price" name="price" onkeyup="chkNumber(this)"  placeholder="${product.price}">
		    </div>
		 </div>


		  <div class="form-group">
		    <label for="userName" class="col-sm-offset-1 col-sm-3 control-label">��ǰ�̹���</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="fileName" name="fileName" placeholder="${product.fileName}">
		    </div>
		  </div>
	
	
		 <div class="form-group">
		    <div class="col-sm-offset-4  col-sm-4 text-center">
		      <button type="button" class="btn btn-primary"  >Ȯ &nbsp;��</button>
			  <a class="btn btn-primary btn" href="#" role="button">��&nbsp;��&nbsp;��&nbsp;��</a>
		    </div>
		  </div>
		</form>
		
		 	</div>
		  
		
</body>

</html>	  
		
	
	