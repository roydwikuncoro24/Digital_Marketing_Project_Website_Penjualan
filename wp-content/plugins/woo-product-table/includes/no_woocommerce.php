<?php

/**
 * Default messeage showing, When not found WooCommerce
 */
function wptf_if_no_woocommerce(){
    echo '<a title="' . esc_attr__( 'Tell us: if need Help', 'wptf_pro' ) . '" href="mailto:codersaiful@gmail.com" style="color: #d00;padding: 10px;">' . esc_html__( '[WOO Product Table] WooCommerce not Active/Installed', 'wptf_pro' ) . '</a>';
}
add_shortcode( 'Product_Table', 'wptf_if_no_woocommerce' );