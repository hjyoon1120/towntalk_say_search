<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../include/header.jsp"%>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Main content -->
	<section class="content">
		<div class="row">
			<div class="col-md-2"></div>

			<div class="col-md-8">
				<div class="box box-success">
					<div class='box-header with-border'>
						<div class='user-block'>
							<img class='img-circle'
								src='/resources/dist/img/user1-128x128.jpg' alt='user image'>
							<span class='username'><a href="personelSay.html">${sayVO.user_id}</a></span>
						<%-- 	<span class='description'><fmt:formatDate
									pattern="yyyy-MM-dd HH:mm" value="${sayVO.created_at }" /></span> --%>
						</div>
						<!-- /.user-block -->
						<div class='box-tools'>
							<button class='btn btn-box-tool' type="submit" id='cancel'>
								<i class='fa fa-chevron-left'></i>
							</button>
							<button class='btn btn-box-tool' type="submit" id='save'>
								<i class='fa  fa-check-square-o'></i>
							</button>
						</div>
						<!-- /.box-tools -->
					</div>
					<!-- /.box-header -->
					<form role="form" method="post">
						<input type='hidden' name='page' value="${cri.page}">
						<input type='hidden' name='perPageNum' value="${cri.perPageNum}">
<%-- 						<input type='hidden' name='keyword' value="${cri.keyword}"> --%>
						
						<div class="box-body no-border">
							<!-- textarea -->
							<div class="form-group">
								<textarea class="form-control" name="body" rows="3"
									placeholder="What's on your mind?">${sayVO.body}</textarea>
							</div>
						</div>

						<div class="box-body">
							<img class="img-responsive pad"
								src="/resources/dist/img/photo2.png" alt="Photo">
							<button class='btn btn-default btn-xs'>
								<i class='fa fa-share'></i> Share
							</button>
							<button class='btn btn-default btn-xs'>
								<i class='fa fa-thumbs-o-up'></i> Like
							</button>
							<span class='pull-right text-muted'>${sayVO.cnt_like }
								likes - ${sayVO.cnt_comment } comments</span>
						</div>
					</form>
					<!-- /.box-body-->
					<!-- <div class='box-footer box-comments'>
							<div class='box-comment'>
								User image
								<img class='img-circle img-sm'
									src='/resources/dist/img/user3-128x128.jpg' alt='user image'>
								<div class='comment-text'>
									<span class="username"> Maria Gonzales <span
										class='text-muted pull-right'>8:03 PM Today</span>
									</span>
									/.username
									It is a long established fact that a reader will be distracted
									by the readable content of a page when looking at its layout.
								</div>
								/.comment-text
							</div>
							/.box-comment
							<div class='box-comment'>
								User image
								<img class='img-circle img-sm'
									src='/resources/dist/img/user8-128x128.jpg' alt='user image'>
								<div class='comment-text'>
									<span class="username"> Luna Stark <span
										class='text-muted pull-right'>8:03 PM Today</span>
									</span>
									/.username
									It is a long established fact that a reader will be distracted
									by the readable content of a page when looking at its layout.
								</div>
								/.comment-text
							</div>
							/.box-comment
						</div>
						/.box-footer
						<div class="box-footer">
							<form action="#" method="post">
								<img class="img-responsive img-circle img-sm"
									src="/resources/dist/img/user4-128x128.jpg" alt="alt text">
								.img-push is used to add margin to elements next to floating images
								<div class="img-push">
									<input type="text" class="form-control input-sm"
										placeholder="Press enter to post comment">
								</div>
							</form>
						</div> -->
					<!-- /.box-footer -->
				</div>
				<!-- /.box -->
			</div>
			<!-- /.col -->

		</div>
		<!-- /.row -->

	</section>
	<!-- /.content -->
</div>
<!-- /.content-wrapper -->

<script>
	$(document).ready(	function() {
		var formObj = $("form[role='form']");
		
		console.log(formObj);
		
		$("#cancel").on("click", function() {
			self.location = "/say/sayList?page=${cri.page}&perPageNum=${cri.perPageNum}"
					+ "&keyword=${cri.keyword}";
			});
		
		$("#save").on("click", function() {
			formObj.submit();
			});
		});
</script>

<%@ include file="../include/footer.jsp"%>