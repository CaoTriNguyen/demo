<%@page import="controller.UploadServlet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>Krajee JQuery Plugins - &copy; Kartik</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"
	rel="stylesheet">
<link href="css/fileinput.css" media="all" rel="stylesheet"
	type="text/css" />
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="js/fileinput.js" type="text/javascript"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"
	type="text/javascript"></script>

<style>
.kv-avatar .file-preview-frame, .kv-avatar .file-preview-frame:hover {
	margin: 0;
	padding: 0;
	border: none;
	box-shadow: none;
	text-align: center;
}

.kv-avatar .file-input {
	display: table-cell;
	max-width: 220px;
}
</style>
</head>
<body>
	<div class="panel panel-default">
		<div class="container">
		
			<form class="form-horizontal"  action="UploadServlet" method="post" name="formupload">	
				<div class="form-group container">
					<br> <label class="control-label col-sm-2">File name:</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="tenlph" name="tenlph"
							value="lph_">
					</div>
				</div>

				<div class="form-group container">
					<br> <label class="control-label col-sm-2">File audio:</label>
					<div class="col-sm-10">
						<input id="file-audio" type="file" class="file" name="tenaudio">
					</div>
				</div>

				<div class="form-group container">
					<br> <label class="control-label col-sm-2">File image:</label>
					<div class="col-sm-10">
						<input id="file-image" type="file" class="file" name="tenimg">
					</div>
				</div>


				<div class="form-group container">
					<br> <label class="control-label col-sm-2">File pdf:</label>
					<div class="col-sm-10">
						<input id="file-pdf" type="file" class="file" name="tenpdf">
					</div>
				</div>

				<hr>

				<div class="form-group container">
					<br> <label class="control-label col-sm-2">A:</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="a" name="dapana">
					</div>
				</div>
				<div class="form-group container">
					<br> <label class="control-label col-sm-2">B:</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="b" name="dapanb">
					</div>
				</div>
				<div class="form-group container">
					<br> <label class="control-label col-sm-2">C:</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="c" name="dapanc">
					</div>
				</div>
				<div class="form-group container">
					<br> <label class="control-label col-sm-2">D:</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="d" name="dapand">
					</div>
				</div>

				<div class="form-group container">
					<br> <label class="control-label col-sm-2">Result:</label>
					<div class="col-sm-10">
						<select class="form-control" style="width: 100px;" name="ketqua">
							<option>A</option>
							<option>B</option>
							<option>C</option>
							<option>D</option>
						</select>
					</div>
				</div>
				
				<br>
				<div class="form-group container" >
						<input type="text"  value="insert" name="command"> 
						<input id = "insert" type="submit" class="button1"
							style="float: right; margin: 5px; width: auto" value="Save" />
				</div>
				<br> <br> <br>
			</form>
	
			<form  action="UploadServlet" method="post" enctype="multipart/form-data" name="formupload">
				<div class="form-group container">
				<input type="text"  value="insert" name="command"> 
				<input id = "insert" type="submit" class="button1"
					style="float: right; margin: 5px; width: auto" value="Save" />
				</div>
			</form>
		</div>
	</div>
</body>

<script>
	//
	$('#file-audio').fileinput({
		language : 'es',
		allowedFileExtensions : [ 'mp3' ],
		uploadAsync : true,
		previewFileIcon : '<i class="fa fa-file"></i>',
		previewFileIconSettings : {
			'docx' : '<i class="fa fa-file-word-o text-danger"></i>',
			'xlsx' : '<i class="fa fa-file-excel-o text-danger"></i>',
			'pptx' : '<i class="fa fa-file-powerpoint-o text-danger"></i>',
			'jpg' : '<i class="fa fa-file-photo-o text-danger"></i>',
			'png' : '<i class="fa fa-file-photo-o text-danger"></i>',
			'gif' : '<i class="fa fa-file-photo-o text-danger"></i>',
			'pdf' : '<i class="fa fa-file-pdf-o text-danger"></i>',
			'zip' : '<i class="fa fa-file-archive-o text-danger"></i>',
			'txt' : '<i class="fa fa-file-notepad-o text-danger"></i>',
			'mp4' : '<i class="fa fa-file-video-o text-danger"></i>',
			'mp3' : '<i class="fa fa-file-audio-o text-success"></i>',
		}
	});

	$('#file-image').fileinput({
		language : 'es',
		allowedFileExtensions : [ 'jpg', 'png', 'gif' ],
		uploadAsync : true,
		previewFileIcon : '<i class="fa fa-file"></i>',
		previewFileIconSettings : {
			'docx' : '<i class="fa fa-file-word-o text-danger"></i>',
			'xlsx' : '<i class="fa fa-file-excel-o text-danger"></i>',
			'pptx' : '<i class="fa fa-file-powerpoint-o text-danger"></i>',
			'jpg' : '<i class="fa fa-file-photo-o text-success"></i>',
			'png' : '<i class="fa fa-file-photo-o text-success"></i>',
			'gif' : '<i class="fa fa-file-photo-o text-success"></i>',
			'pdf' : '<i class="fa fa-file-pdf-o text-danger"></i>',
			'zip' : '<i class="fa fa-file-archive-o text-danger"></i>',
			'txt' : '<i class="fa fa-file-notepad-o text-danger"></i>',
			'mp4' : '<i class="fa fa-file-video-o text-danger"></i>',
			'mp3' : '<i class="fa fa-file-audio-o text-danger"></i>',
		}
	});

	$('#file-pdf').fileinput({
		language : 'es',
		allowedFileExtensions : [ 'pdf' ],
		uploadAsync : true,
		previewFileIcon : '<i class="fa fa-file"></i>',
		previewFileIconSettings : {
			'docx' : '<i class="fa fa-file-word-o text-danger"></i>',
			'xlsx' : '<i class="fa fa-file-excel-o text-danger"></i>',
			'pptx' : '<i class="fa fa-file-powerpoint-o text-danger"></i>',
			'jpg' : '<i class="fa fa-file-photo-o text-danger"></i>',
			'png' : '<i class="fa fa-file-photo-o text-danger"></i>',
			'gif' : '<i class="fa fa-file-photo-o text-danger"></i>',
			'pdf' : '<i class="fa fa-file-pdf-o text-success"></i>',
			'zip' : '<i class="fa fa-file-archive-o text-danger"></i>',
			'txt' : '<i class="fa fa-file-notepad-o text-danger"></i>',
			'mp4' : '<i class="fa fa-file-video-o text-danger"></i>',
			'mp3' : '<i class="fa fa-file-audio-o text-danger"></i>',
		}
	});
</script>

</html>