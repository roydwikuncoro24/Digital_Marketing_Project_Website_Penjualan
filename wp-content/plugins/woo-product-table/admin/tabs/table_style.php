<?php 
$wpt_style_file_selection_options = WPT_Product_Table::$style_form_options;
?>
<br>
<div class="wpt_column">
    <label class="wpt_label" for="wpt_style_file_selection"><?php esc_html_e( 'Select Template', 'wpt_pro' ); ?></label>
    <select name="table_style[template]" data-name="template" id="wpt_style_file_selection"  class="wpt_fullwidth wpt_data_filed_atts" >
        <?php
        foreach ( $wpt_style_file_selection_options as $key => $value ) {
            echo "<option value='" . esc_attr( $key ) . "' ";
            echo isset( $meta_table_style['template'] ) && $meta_table_style['template'] == $key ? 'selected' : '' ;
            echo ">" . esc_html( $value ) . "</option>";
        }
        ?>
    </select>
</div>
<br>
<h2>Custom Design is only for Pro version.</h2>
<br>
<br>
<br>
<img src="<?php echo WPT_Product_Table::getPath('BASE_URL'); ?>images/design-tab-of-product-table-pro.png">