<input type="submit" class="btnRegister btn btn-success" data-toggle="modal"
	data-target="#myModal" value="Register" required/>

<div class="modal fade" id="myModal" role="dialog">
	<div class="modal-dialog">

		<!-- accept	-->
		<div class="modal-content">
			<div class="modal-header">

				<h4 class="modal-title">Contract</h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>
			<div class="modal-body">
				<p>Are you sure you want to accept?</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" data-dismiss="modal"
					onclick="window.location.href='${accept}&status=Accept' ;return false;">OK</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			</div>
		</div>

	</div>
</div>

