<div class="row">
  <div class="col-sm-6">
    <fieldset id="account">
      <legend><?php echo $text_your_details; ?></legend>
      <div class="form-group" style="display: <?php echo (count($customer_groups) > 1 ? 'block' : 'none'); ?>;">
        <label class="control-label"><?php echo $entry_customer_group; ?></label>
        <?php foreach ($customer_groups as $customer_group) { ?>
        <?php if ($customer_group['customer_group_id'] == $customer_group_id) { ?>
        <div class="radio">
          <label>
            <input type="radio" name="customer_group_id" value="<?php echo $customer_group['customer_group_id']; ?>" checked="checked" />
            <?php echo $customer_group['name']; ?></label>
        </div>
        <?php } else { ?>
        <div class="radio">
          <label>
            <input type="radio" name="customer_group_id" value="<?php echo $customer_group['customer_group_id']; ?>" />
            <?php echo $customer_group['name']; ?></label>
        </div>
        <?php } ?>
        <?php } ?>
      </div>
      <div class="form-group required">
        <label class="control-label" for="input-shipping-firstname"><?php echo $entry_firstname; ?></label>
        <input type="text" name="firstname" value="" placeholder="<?php echo $entry_firstname; ?>" id="input-shipping-firstname" class="form-control" />
      </div>
      <div class="form-group required">
        <label class="control-label" for="input-shipping-lastname"><?php echo $entry_lastname; ?></label>
        <input type="text" name="lastname" value="" placeholder="<?php echo $entry_lastname; ?>" id="input-shipping-lastname" class="form-control" />
      </div>
      <div class="form-group required">
        <label class="control-label" for="input-shipping-email"><?php echo $entry_email; ?></label>
        <input type="text" name="email" value="" placeholder="<?php echo $entry_email; ?>" id="input-shipping-email" class="form-control" />
      </div>
      <div class="form-group required">
        <label class="control-label" for="input-shipping-telephone"><?php echo $entry_telephone; ?></label>
        <input type="text" name="telephone" value="" placeholder="<?php echo $entry_telephone; ?>" id="input-shipping-telephone" class="form-control" />
      </div>
      <div class="form-group">
        <label class="control-label" for="input-shipping-fax"><?php echo $entry_fax; ?></label>
        <input type="text" name="fax" value="" placeholder="<?php echo $entry_fax; ?>" id="input-shipping-fax" class="form-control" />
      </div>
      <?php foreach ($custom_fields as $custom_field) { ?>
      <?php if ($custom_field['location'] == 'account') { ?>
      <?php if ($custom_field['type'] == 'select') { ?>
      <div id="shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
        <label class="control-label" for="input-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
        <select name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" id="input-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control">
          <option value=""><?php echo $text_select; ?></option>
          <?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
          <option value="<?php echo $custom_field_value['custom_field_value_id']; ?>"><?php echo $custom_field_value['name']; ?></option>
          <?php } ?>
        </select>
      </div>
      <?php } ?>
      <?php if ($custom_field['type'] == 'radio') { ?>
      <div id="shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
        <label class="control-label"><?php echo $custom_field['name']; ?></label>
        <div id="input-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>">
          <?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
          <div class="radio">
            <label>
              <input type="radio" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" />
              <?php echo $custom_field_value['name']; ?></label>
          </div>
          <?php } ?>
        </div>
      </div>
      <?php } ?>
      <?php if ($custom_field['type'] == 'checkbox') { ?>
      <div id="shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
        <label class="control-label"><?php echo $custom_field['name']; ?></label>
        <div id="input-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>">
          <?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
          <div class="checkbox">
            <label>
              <input type="checkbox" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>][]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" />
              <?php echo $custom_field_value['name']; ?></label>
          </div>
          <?php } ?>
        </div>
      </div>
      <?php } ?>
      <?php if ($custom_field['type'] == 'text') { ?>
      <div id="shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
        <label class="control-label" for="input-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
        <input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field['value']; ?>" placeholder="<?php echo $custom_field['name']; ?>" id="input-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
      </div>
      <?php } ?>
      <?php if ($custom_field['type'] == 'textarea') { ?>
      <div id="shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
        <label class="control-label" for="input-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
        <textarea name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" rows="5" placeholder="<?php echo $custom_field['name']; ?>" id="input-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control"><?php echo $custom_field['value']; ?></textarea>
      </div>
      <?php } ?>
      <?php if ($custom_field['type'] == 'file') { ?>
      <div id="shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
        <label class="control-label"><?php echo $custom_field['name']; ?></label>
        <br />
        <button type="button" id="button-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
        <input type="hidden" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="" id="input-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>" />
      </div>
      <?php } ?>
      <?php if ($custom_field['type'] == 'date') { ?>
      <div id="shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
        <label class="control-label" for="input-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
        <div class="input-group date">
          <input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field['value']; ?>" placeholder="<?php echo $custom_field['name']; ?>" data-date-format="YYYY-MM-DD" id="input-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
          <span class="input-group-btn">
          <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
          </span></div>
      </div>
      <?php } ?>
      <?php if ($custom_field['type'] == 'time') { ?>
      <div id="shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
        <label class="control-label" for="input-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
        <div class="input-group time">
          <input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field['value']; ?>" placeholder="<?php echo $custom_field['name']; ?>" data-date-format="HH:mm" id="input-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
          <span class="input-group-btn">
          <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
          </span></div>
      </div>
      <?php } ?>
      <?php if ($custom_field['type'] == 'datetime') { ?>
      <div id="shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
        <label class="control-label" for="input-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
        <div class="input-group datetime">
          <input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field['value']; ?>" placeholder="<?php echo $custom_field['name']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
          <span class="input-group-btn">
          <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
          </span></div>
      </div>
      <?php } ?>
      <?php } ?>
      <?php } ?>
    </fieldset>
    <fieldset>
      <legend><?php echo $text_your_password; ?></legend>
      <div class="form-group required">
        <label class="control-label" for="input-shipping-password"><?php echo $entry_password; ?></label>
        <input type="password" name="password" value="" placeholder="<?php echo $entry_password; ?>" id="input-shipping-password" class="form-control" />
      </div>
      <div class="form-group required">
        <label class="control-label" for="input-shipping-confirm"><?php echo $entry_confirm; ?></label>
        <input type="password" name="confirm" value="" placeholder="<?php echo $entry_confirm; ?>" id="input-shipping-confirm" class="form-control" />
      </div>
    </fieldset>
  </div>
  <div class="col-sm-6">
    <fieldset id="address">
      <legend><?php echo $text_your_address; ?></legend>
      <!--<div class="form-group">
        <label class="control-label" for="input-shipping-company"><?php echo $entry_company; ?></label>
        <input type="text" name="company" value="" placeholder="<?php echo $entry_company; ?>" id="input-shipping-company" class="form-control" />
      </div>-->
      <div class="form-group required">
        <label class="control-label" for="input-shipping-address-1"><?php echo $entry_address_1; ?></label>
        <input type="text" name="address_1" value="" placeholder="<?php echo $entry_address_1; ?>" id="input-shipping-address-1" class="form-control" />
      </div>
      <div class="form-group">
        <label class="control-label" for="input-shipping-address-2"><?php echo $entry_address_2; ?></label>
        <input type="text" name="address_2" value="" placeholder="<?php echo $entry_address_2; ?>" id="input-shipping-address-2" class="form-control" />
      </div>
      <div class="form-group required">
        <label class="control-label" for="input-shipping-city"><?php echo $entry_city; ?></label>
        <input type="text" name="city" value="" placeholder="<?php echo $entry_city; ?>" id="input-shipping-city" class="form-control" />
      </div>
      <div class="form-group required">
        <label class="control-label" for="input-shipping-postcode"><?php echo $entry_postcode; ?></label>
        <input type="text" name="postcode" value="<?php echo $postcode; ?>" placeholder="<?php echo $entry_postcode; ?>" id="input-shipping-postcode" class="form-control" />
      </div>
      <div class="form-group required">
        <label class="control-label" for="input-shipping-country"><?php echo $entry_country; ?></label>
        <select name="country_id" id="input-shipping-country" class="form-control">
          <option value=""><?php echo $text_select; ?></option>
          <?php foreach ($countries as $country) { ?>
          <?php if ($country['country_id'] == $country_id) { ?>
          <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
          <?php } else { ?>
          <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
          <?php } ?>
          <?php } ?>
        </select>
      </div>
      <div class="form-group required">
        <label class="control-label" for="input-shipping-zone"><?php echo $entry_zone; ?></label>
        <select name="zone_id" id="input-shipping-zone" class="form-control">
        </select>
      </div>
      <?php foreach ($custom_fields as $custom_field) { ?>
      <?php if ($custom_field['location'] == 'address') { ?>
      <?php if ($custom_field['type'] == 'select') { ?>
      <div id="shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
        <label class="control-label" for="input-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
        <select name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" id="input-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control">
          <option value=""><?php echo $text_select; ?></option>
          <?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
          <option value="<?php echo $custom_field_value['custom_field_value_id']; ?>"><?php echo $custom_field_value['name']; ?></option>
          <?php } ?>
        </select>
      </div>
      <?php } ?>
      <?php if ($custom_field['type'] == 'radio') { ?>
      <div id="shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
        <label class="control-label"><?php echo $custom_field['name']; ?></label>
        <div id="input-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>">
          <?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
          <div class="radio">
            <label>
              <input type="radio" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" />
              <?php echo $custom_field_value['name']; ?></label>
          </div>
          <?php } ?>
        </div>
      </div>
      <?php } ?>
      <?php if ($custom_field['type'] == 'checkbox') { ?>
      <div id="shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
        <label class="control-label"><?php echo $custom_field['name']; ?></label>
        <div id="input-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>">
          <?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
          <div class="checkbox">
            <label>
              <input type="checkbox" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>][]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" />
              <?php echo $custom_field_value['name']; ?></label>
          </div>
          <?php } ?>
        </div>
      </div>
      <?php } ?>
      <?php if ($custom_field['type'] == 'text') { ?>
      <div id="shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
        <label class="control-label" for="input-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
        <input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field['value']; ?>" placeholder="<?php echo $custom_field['name']; ?>" id="input-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
      </div>
      <?php } ?>
      <?php if ($custom_field['type'] == 'textarea') { ?>
      <div id="shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
        <label class="control-label" for="input-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
        <textarea name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" rows="5" placeholder="<?php echo $custom_field['name']; ?>" id="input-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control"><?php echo $custom_field['value']; ?></textarea>
      </div>
      <?php } ?>
      <?php if ($custom_field['type'] == 'file') { ?>
      <div id="shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
        <label class="control-label"><?php echo $custom_field['name']; ?></label>
        <br />
        <button type="button" id="button-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
        <input type="hidden" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="" id="input-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>" />
      </div>
      <?php } ?>
      <?php if ($custom_field['type'] == 'date') { ?>
      <div id="shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
        <label class="control-label" for="input-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
        <div class="input-group date">
          <input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field['value']; ?>" placeholder="<?php echo $custom_field['name']; ?>" data-date-format="YYYY-MM-DD" id="input-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
          <span class="input-group-btn">
          <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
          </span></div>
      </div>
      <?php } ?>
      <?php if ($custom_field['type'] == 'time') { ?>
      <div id="shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
        <label class="control-label" for="input-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
        <div class="input-group time">
          <input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field['value']; ?>" placeholder="<?php echo $custom_field['name']; ?>" data-date-format="HH:mm" id="input-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
          <span class="input-group-btn">
          <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
          </span></div>
      </div>
      <?php } ?>
      <?php if ($custom_field['type'] == 'datetime') { ?>
      <div id="shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
        <label class="control-label" for="input-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
        <div class="input-group datetime">
          <input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field['value']; ?>" placeholder="<?php echo $custom_field['name']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
          <span class="input-group-btn">
          <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
          </span></div>
      </div>
      <?php } ?>
      <?php } ?>
      <?php } ?>
    </fieldset>

    <?php echo $captcha; ?>
  </div>
</div>

<div class="checkbox">
  <label for="newsletter">
    <input type="checkbox" name="newsletter" value="1" id="newsletter" checked="checked" />
    <?php echo $entry_newsletter; ?></label>
</div>
<?php if ($shipping_required) { ?>
<div class="checkbox">
  <label>
    <input type="checkbox" name="shipping_address" value="1" checked="checked" />
    <?php echo $entry_shipping; ?></label>
</div>
<?php } ?>
<?php if ($text_agree) { ?>
<div class="buttons clearfix">
  <div class="pull-right"><?php echo $text_agree; ?> &nbsp;
    <input type="checkbox" name="agree" value="1" />
    <input type="button" value="<?php echo $button_continue; ?>" id="button-register" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary" />
  </div>
</div>
<?php } else { ?>
<div class="buttons clearfix">
  <div class="pull-right">
    <input type="button" value="<?php echo $button_continue; ?>" id="button-register" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary" />
  </div>
</div>
<?php } ?>
<script type="text/javascript"><!--
// Sort the custom fields
$('#account .form-group[data-sort]').detach().each(function() {
	if ($(this).attr('data-sort') >= 0 && $(this).attr('data-sort') <= $('#account .form-group').length) {
		$('#account .form-group').eq($(this).attr('data-sort')).before(this);
	}

	if ($(this).attr('data-sort') > $('#account .form-group').length) {
		$('#account .form-group:last').after(this);
	}

	if ($(this).attr('data-sort') == $('#account .form-group').length) {
		$('#account .form-group:last').after(this);
	}

	if ($(this).attr('data-sort') < -$('#account .form-group').length) {
		$('#account .form-group:first').before(this);
	}
});

$('#address .form-group[data-sort]').detach().each(function() {
	if ($(this).attr('data-sort') >= 0 && $(this).attr('data-sort') <= $('#address .form-group').length) {
		$('#address .form-group').eq($(this).attr('data-sort')).before(this);
	}

	if ($(this).attr('data-sort') > $('#address .form-group').length) {
		$('#address .form-group:last').after(this);
	}

	if ($(this).attr('data-sort') == $('#address .form-group').length) {
		$('#address .form-group:last').after(this);
	}

	if ($(this).attr('data-sort') < -$('#address .form-group').length) {
		$('#address .form-group:first').before(this);
	}
});

$('#collapse-shipping-address input[name=\'customer_group_id\']').on('change', function() {
	$.ajax({
		url: 'index.php?route=checkout/checkout/customfield&customer_group_id=' + this.value,
		dataType: 'json',
		success: function(json) {
			$('#collapse-shipping-address .custom-field').hide();
			$('#collapse-shipping-address .custom-field').removeClass('required');

			for (i = 0; i < json.length; i++) {
				custom_field = json[i];

				$('#shipping-custom-field' + custom_field['custom_field_id']).show();

				if (custom_field['required']) {
					$('#shipping-custom-field' + custom_field['custom_field_id']).addClass('required');
				}
			}
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('#collapse-shipping-address input[name=\'customer_group_id\']:checked').trigger('change');
//--></script>
<script type="text/javascript"><!--
$('#collapse-shipping-address button[id^=\'button-shipping-custom-field\']').on('click', function() {
	var node = this;

	$('#form-upload').remove();

	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

	$('#form-upload input[name=\'file\']').trigger('click');

	if (typeof timer != 'undefined') {
    	clearInterval(timer);
	}

	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);

			$.ajax({
				url: 'index.php?route=tool/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function() {
					$(node).button('loading');
				},
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$('.text-danger').remove();

					if (json['error']) {
						$(node).parent().find('input[name^=\'custom_field\']').after('<div class="text-danger">' + json['error'] + '</div>');
					}

					if (json['success']) {
						alert(json['success']);

						$(node).parent().find('input[name^=\'custom_field\']').attr('value', json['code']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});
//--></script>
<script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});

$('.time').datetimepicker({
	pickDate: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});
//--></script>
<script type="text/javascript"><!--
$('#collapse-shipping-address select[name=\'country_id\']').on('change', function() {
	$.ajax({
		url: 'index.php?route=checkout/checkout/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('#collapse-shipping-address select[name=\'country_id\']').after(' <i class="fa fa-circle-o-notch fa-spin"></i>');
		},
		complete: function() {
			$('.fa-spin').remove();
		},
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('#collapse-shipping-address input[name=\'postcode\']').parent().parent().addClass('required');
			} else {
				$('#collapse-shipping-address input[name=\'postcode\']').parent().parent().removeClass('required');
			}

			html = '<option value=""><?php echo $text_select; ?></option>';

			if (json['zone'] && json['zone'] != '') {
				for (i = 0; i < json['zone'].length; i++) {
					html += '<option value="' + json['zone'][i]['zone_id'] + '"';

					if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
						html += ' selected="selected"';
					}

					html += '>' + json['zone'][i]['name'] + '</option>';
				}
			} else {
				html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
			}

			$('#collapse-shipping-address select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('#collapse-shipping-address select[name=\'country_id\']').trigger('change');
//--></script>
