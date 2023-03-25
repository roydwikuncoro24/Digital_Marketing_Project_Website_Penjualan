<?php
if ( ! defined( 'ABSPATH' ) ) { exit;}
if( !class_exists( 'Ni_WooCommerce_Cost_Of_Goods_Quick_Edit' ) ) { 
	class Ni_WooCommerce_Cost_Of_Goods_Quick_Edit {
		public function __construct(){
		   add_action( 'quick_edit_custom_box',  array(&$this,'quick_edit_add_nicog_field' ), 10, 2 );	
		   add_action( 'save_post',  array(&$this,'save_quick_edit_nicog_field' ) );	 
		   add_filter( 'post_row_actions',  array(&$this,'expand_quick_edit_nicog_field_link' ), 10, 2  );	 	
		   add_action( 'admin_footer',  array(&$this,'quick_edit_nicog_field_javascript') );		
		}		
		function quick_edit_add_nicog_field( $column_name, $post_type ) {
			//global $post;
			if ( 'ni_cost_goods' != $column_name ) {
				return;
			}
			
			
			 
			
			?>
			<fieldset class="inline-edit-col-left _nicog_fieldset">
				<div class="inline-edit-col wp-clearfix">
				<label class="alignleft">
					<span class=""><?php esc_html_e( 'Cost Of Goods', '' ); ?></span>
					<span class="input-text-wrap alignright">
						<input type="text" name="_ni_cost_goods" id="_ni_cost_goods" class="text wc_input_price regular_price _ni_cost_goods_qedit" value="">
					</span>
				</label>
				</div>
			</fieldset>
			<?php
			 	//$post_id = $post->ID;
			
			   //$ni_cog = get_post_meta( $post_id, '_ni_cost_goods', true );
			
		}		
		
		function save_quick_edit_nicog_field( $post_id = '') {
			if ( defined( 'DOING_AUTOSAVE' ) && DOING_AUTOSAVE ) {
				return $post_id;
			}
			
			if(!isset($_REQUEST['post_type'])){
				return $post_id;
			}
			
			if('product' != $_REQUEST['post_type']){
				return $post_id;
			}
			
			if (!current_user_can( 'edit_post', $post_id)){
				return $post_id;
			}
			 
			$product = wc_get_product($post_id);
			
			if(!$product){
				return $post_id;
			}
			
			$nicog_product_type = $product->get_type();
			
			if ($nicog_product_type=='simple'){
				$data = isset( $_REQUEST['_ni_cost_goods'] ) ? $_REQUEST['_ni_cost_goods'] : 0;
				update_post_meta( $post_id, '_ni_cost_goods', $data );	
			}
			
		}
		function expand_quick_edit_nicog_field_link( $actions = '', $post = null ) {
			global $current_screen;

			if ( 'product' != $post->post_type ) {
				return $actions;
			}
			
			
			$product = wc_get_product( $post->ID);
			
			if(!$product){
				$post->ID;
			}
			
			$nicog_product_type=$product->get_type();				 
			 
			$data                               = get_post_meta( $post->ID, '_ni_cost_goods', true );
			$data                               = empty( $data ) ? '' : $data;
			$actions['inline hide-if-no-js']    = '<a href="#" class="editinline" title="';
			$actions['inline hide-if-no-js']    .= esc_attr( 'Edit this item inline' ) . '"';
			$actions['inline hide-if-no-js']    .= " onclick=\"get_nicog_field_value('{$data}','{$nicog_product_type}')\" >";
			$actions['inline hide-if-no-js']    .= 'Quick Edit';
			$actions['inline hide-if-no-js']    .= '</a>';

			return $actions;
		}
		function quick_edit_nicog_field_javascript() {
			global $current_screen;

			if ( 'product' != $current_screen->post_type ) {
				return;
			}
		?>
			<script type="text/javascript">
			function get_nicog_field_value( fieldValue, nicog_product_type ) {
				//alert(fieldValue);
				inlineEditPost.revert();
				//alert(jQuery( '.headline_news' ).val());
				//jQuery( '.headline_news' ).attr( 'checked', 0 == fieldValue ? false : true );
				if (nicog_product_type=='simple'){
					jQuery('._nicog_fieldset').show();
					jQuery('._ni_cost_goods_qedit').val(fieldValue);
					
				}else{
					
					jQuery('._nicog_fieldset').hide();
				}
				
				
			}
			</script>
		<?php
		}
		
	}
}