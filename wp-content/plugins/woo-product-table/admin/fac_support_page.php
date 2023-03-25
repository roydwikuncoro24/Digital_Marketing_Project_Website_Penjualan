<?php

/**
 * Faq and contact us page
 * 
 * @since 4.25
 */
function wptf_fac_support_page(){
?>
<div class="wrap wptf_wrap wptf_configure_page">
        <h2 class="plugin_name"><?php esc_html_e( 'Contact & Support', 'wptf_pro' );?></h2>
        <div id="wptf_configuration_form" class="wptf_leftside">
            
            
            <div style="text-align:center;" class="fieldwrap wptf_result_footer">
                <br>
                <br>
                <h3 style="color: #d00;">Old shortcode System has been removed. such: [Product_Table column_keywords='' column_title=''] or [WPT_SHOP]</h3>
                <br>
                <br>
                <h3 style="margin:4px 0px">
                    <a target="_blank" href="https://codecanyon.net/item/woo-product-table-pro/20676867">Get The Pro Version</a> | 
                    <a target="_blank" href="https://codeastrology.com/woo-product-table-pro/">Pro Demo</a> | 
                    <a target="_blank" href="http://doc.codeastrology.com/woo-product-table-pro/#intro">Documentation</a> | 
                    <a target="_blank" href="https://codeastrology.com/blog/">CodeAstrology Blog</a> | 
                    <a target="_blank" href="https://codeastrology.com/support/">Get Support</a> | 
                </h3>
                <img style="margin: 13px auto;max-width: 100%;" src="<?php echo WPTF_BASE_URL; ?>images/cover_image.jpg">
                <hr>
                <div class="wptf_faq_support_link_collection">
                    <a href="https://codecanyon.net/user/codeastrology/portfolio" target="_blank"><?php esc_html_e( 'CodeAstrology Portfolios', 'wptf_pro' );?></a>
                    <a href="https://codecanyon.net/user/codeastrology" target="_blank"><?php esc_html_e( 'CodeAstrology Profile', 'wptf_pro' );?></a>
                    <a href="https://codeastrology.com/support/" target="_blank"><?php esc_html_e( 'CodeAstrology Support', 'wptf_pro' );?></a>
                    <a href="https://codeastrology.com" target="_blank"><?php esc_html_e( 'CodeAstrology.com', 'wptf_pro' );?></a>

                </div>
                <a href="mailto:codersaiful@gmail.com"><?php esc_html_e( 'We are Freelancer', 'wptf_pro' );?></a>
                <br style="clear: both;">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/ZloiY3NRmW8" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></iframe>
            <div style="font-size: 130%;line-height: 150%;">
                    <h3><?php esc_html_e( 'More Video Tutorial', 'wptf_pro' );?></h3>
                    <a href="https://youtu.be/Jl3gTcOOhRQ"><?php esc_html_e( 'Custom Design Of Woo Product Table Pro', 'wptf_pro' );?></a><br>
                    <a href="https://youtu.be/aOzzYBr2Rug"><?php esc_html_e( 'Custom Field Support In WooCommerce Product Table', 'wptf_pro' );?></a><br>
                    <a href="https://youtu.be/w2vZSIzAJFo"><?php esc_html_e( 'Custom Taxnomoy Support In WooCommerce Product Table Pro', 'wptf_pro' );?></a><br>
                    <a href="https://youtu.be/D_hl2UtVTCw"><?php esc_html_e( 'How to use Woo Product Table Pro - Basic to Advance', 'wptf_pro' );?></a><br><br>
                </div>
                <br style="clear: both;">
            </div>
            <!-- </form> -->

            <br style="clear: both;">
        </div>
        <!-- Right Side start here -->
        <?php include __DIR__ . '/includes/right_side.php'; ?> 
        
</div>
<style>
.wptf_leftside,.wptf_rightside{float: left;min-height: 500px;}
.wptf_leftside{
    width: 65%;
}
.wptf_rightside{width: 32%; margin-top: -42px;}
.wptf_faq_support_link_collection a {
    text-decoration: none;
    background: #2a3950;
    padding: 3px 6px;
    cursor: pointer;
    display: inline-block;
    color: #a3d5e0;
    border-radius: 5px;
    transition: all 1s;
    margin: 1px;
}
.wptf_faq_support_link_collection a:hover {
    background: #a3d5e0;
    padding: 3px 8px;
    color: #2a3950;
    border-radius: 8px;
}
@media only screen and (max-width: 800px){
    .wptf_leftside.wptf_rightside{float: none !important;width: 100%;}
}


    </style>
<?php
}