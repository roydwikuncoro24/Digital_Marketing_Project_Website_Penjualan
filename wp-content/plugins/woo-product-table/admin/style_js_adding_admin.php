<?php
/**
 * CSS or Style file add for Admin Section. 
 * 
 * @since 1.0.0
 * @update 1.0.3
 */
function wptf_style_js_adding_admin(){
    
    wp_enqueue_style( 'wptf-admin-css', WPT_Product_Table::getPath( 'BASE_URL' ) . 'css/admin.css', array(), '1.0.0', 'all' );
    
    /**
     * Select2 CSS file including. 
     * 
     * @since 1.0.3
     */    
    wp_enqueue_style( 'select2', WPT_Product_Table::getPath( 'BASE_URL' ) . 'css/select2.min.css', array(), '1.8.2', 'all' );
    
    //jQuery file including. jQuery is a already registerd to WordPress
    wp_enqueue_script( 'jquery' );
    
    //Includeing jQuery UI Core
    wp_enqueue_script( 'jquery-ui-core' );
    wp_enqueue_script( 'jquery-ui-sortable' );
    
    /**
     * Select2 jQuery Plugin file including. 
     * Here added min version. But also available regular version in same directory
     * 
     * @since 1.0.3
     */
    wp_enqueue_script( 'select2', WPT_Product_Table::getPath( 'BASE_URL' ) . 'js/select2.min.js', array( 'jquery' ), '4.0.5', true );
    
    //Includeing Color Picker js and css at version 4.4
    wp_enqueue_script( 'wp-color-picker' );
    wp_enqueue_style( 'wp-color-picker' );
    
    if( !class_exists( 'WOO_Product_Table' ) ){
        wp_enqueue_script('wptf-admin-js', WPT_Product_Table::getPath('BASE_URL') . 'js/admin.js', __FILE__, '1.0.0', true);
    }
    
    //WordPress Default Media Added only for addmin
    wp_enqueue_media();
}
add_action( 'admin_enqueue_scripts', 'wptf_style_js_adding_admin', 99 );

function wptf_remove_wpseo_meta(){
    remove_meta_box('wpseo_meta', 'wpt_product_table', 'normal');
}
add_action('add_meta_boxes','wptf_remove_wpseo_meta',100);