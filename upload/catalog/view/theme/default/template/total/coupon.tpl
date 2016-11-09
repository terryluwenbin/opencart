<div class="panel panel-default">
	<div class="panel-heading">
		<h4 class="panel-title"><a href="#collapse-coupon" class="accordion-toggle" data-toggle="collapse" data-parent="#accordion"><?php echo $heading_title; ?> <i class="fa fa-caret-down"></i></a></h4>
	</div>
	<div id="collapse-coupon" class="panel-collapse collapse in">
		<div class="panel-body">
			<label class="col-sm-2 control-label" for="input-coupon"><?php echo $entry_coupon; ?></label>
			<div class="input-group">
				<input type="text" name="coupon" value="<?php echo $coupon; ?>" placeholder="<?php echo $entry_coupon; ?>" id="input-coupon" class="form-control" />
				<span class="input-group-btn">
					<input type="button" value="<?php echo $button_coupon; ?>" id="button-coupon" data-loading-text="<?php echo $text_loading; ?>"  class="btn btn-primary" />
				</span>
			</div>
			<?php if($coupon) { ?>
			<p class="coupon_msg col-sm-offset-2">Free Shipping in Kitchener or Waterloo area.<a data-toggle="modal" data-target="#use_coupon_modal">More</a></p>
			<?php } else { ?>
			<p class="coupon_msg col-sm-offset-2 hide">Free Shipping in Kitchener or Waterloo area.<a data-toggle="modal" data-target="#use_coupon_modal">More</a></p>
			<?php } ?>
			<p class="error_msg text-danger"></p>
			<h4 class="col-sm-offset-2"><a class="get_coupon" data-toggle="modal" data-target="#get_coupon_modal">How to get coupon ?</a></h4>
			<script type="text/javascript"><!--
				$('#button-coupon').on('click', function() {
					$.ajax({
						url: 'index.php?route=total/coupon/coupon',
						type: 'post',
						data: 'coupon=' + encodeURIComponent($('input[name=\'coupon\']').val()),
						dataType: 'json',
						beforeSend: function() {
							$('#button-coupon').button('loading');
						},
						complete: function() {
							$('#button-coupon').button('reset');
						},
						success: function(json) {
							$('.alert').remove();

							if (json['error']) {
								//$('.breadcrumb').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
								$('p.error_msg').html(json['error']);
								if(!$('p.coupon_msg').hasClass('hide')) {
									$('p.coupon_msg').addClass('hide');
								}
								//$('html, body').animate({ scrollTop: 0 }, 'slow');
							}

							if (json['redirect']) {
								location = json['redirect'];
							}
						}
					});
				});

				/*$('input[name="coupon"]').bind("input propertychange" ,function () {
					if($(this).val() != "") {
						$('.coupon_msg').removeClass('hide');
					} else {
						$('.coupon_msg').addClass('hide');
					}
				});*/

				//--></script>
		</div>
	</div>
</div>

<!-- Coupon Modal -->
<div class="modal fade" id="get_coupon_modal" tabindex="-1" role="dialog" aria-labelledby="getCouponLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
				<h3 class="modal-title" id="getCouponLabel">Coupon Rules</h3>
			</div>
			<div class="modal-body">
				<ul class="list-unstyled">
					<li>
						<h4>Get Rules:</h4>
						<ul class="list-unstyled">
							<li>
								(1) Follow our social media,
								<a href="http://facebook.com/xlightca" target="_blank">FB</a>,
								<a href="http://twitter.com/xlightca" target="_blank">TW</a>,
								<a href="https://instagram.com/xlightca" target="_blank">INS</a></li>
							<li>
								(2) Search "Xlight Coupon" online.
							</li>
						</ul>
					</li>
				</ul>
			</div>
			<div class="modal-footer" style="text-align: center;">
				<button type="button" class="btn btn-primary" data-dismiss="modal">Determine</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="use_coupon_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
				<h3 class="modal-title" id="myModalLabel">Coupon Rules</h3>
			</div>
			<div class="modal-body">
				<ul class="list-unstyled">
					<li>
						<h4>Use Rules:</h4>
						<ul class="list-unstyled">
							<li>
								(1) Order online at <a href="https://xlight.ca" target="_blank">www.xlight.ca</a>.
							</li>
							<li>
								(2) Free Shipping in Kitchener or Waterloo area.
							</li>
							<li>
								(3) Purchase of goods must be two or more.
							</li>
							<li>
								(4) Each coupon code can be reused, but only one coupon per order.
							</li>
							<li>
								(5) Coupon expiration date is December 31, 2016.
							</li>
						</ul>
					</li>
				</ul>
			</div>
			<div class="modal-footer" style="text-align: center;">
				<button type="button" class="btn btn-primary" data-dismiss="modal">Determine</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>

<script>
	$('.modal').modal({
		backdrop: false,
		show: false
	});
</script>