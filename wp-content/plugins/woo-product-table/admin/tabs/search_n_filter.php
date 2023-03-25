<?php
$meta_search_n_filter =  get_post_meta( $post->ID, 'search_n_filter', true );
?>
<div class="wptf_column wptf_disable_column">
    <label class="wptf_label" for="wptf_search_box"><?php esc_html_e( 'Advance Search Box', 'wptf_pro' ); ?></label>
    <select name="search_n_filter[search_box]" data-name='search_box' id="wptf_search_box" class="wptf_fullwidth wptf_data_filed_atts" >
        <option value="no" <?php echo isset( $meta_search_n_filter['search_box'] ) && $meta_search_n_filter['search_box'] == 'no' ? 'selected' : 'selected'; ?>><?php esc_html_e( 'No Search Box', 'wptf_pro' ); ?></option>
        <option value="yes" <?php echo isset( $meta_search_n_filter['search_box'] ) && $meta_search_n_filter['search_box'] == 'yes' ? 'selected' : ''; ?>><?php esc_html_e( 'Show Search Box', 'wptf_pro' ); ?></option>
    </select>
</div>
<div class="wptf_column wptf_disable_column">
    <label class="wptf_label" for="wptf_taxonomy_keywords"><?php esc_html_e( 'Taxonomy Keywords for Advance Search Box (Separate with comma[,])', 'wptf_pro' ); ?></label>
    <input name="search_n_filter[taxonomy_keywords]" data-name='taxonomy_keywords' id="wptf_taxonomy_keywords" value="<?php echo isset( $meta_search_n_filter['taxonomy_keywords'] ) ?$meta_search_n_filter['taxonomy_keywords'] : 'product_cat,product_tag'; ?>" class="wptf_fullwidth wptf_data_filed_atts" type="text" value="" placeholder="<?php esc_attr_e( 'eg: product_cat,product_tag,color,size', 'wptf_pro' ); ?>">
    <p><?php echo sprintf( esc_html__( 'There are lot of %s for creating Taxonomy. For Example: You can use %s Plugin.', 'wptf_pro' ),
            '<a href="https://wordpress.org/plugins/search/Taxonomy/" target="_blank">Taxonomy Creator Plugin available</a>',
            '<a href="https://wordpress.org/plugins/wck-custom-fields-and-custom-post-types-creator/" target="_blank">Custom Post Types and Custom Fields creator – WCK</a>'
            );
    ?>
    </p>
</div>

<div class="wptf_column">
    <label class="wptf_label" for="wptf_filter_box"><?php esc_html_e( 'Mini Filter', 'wptf_pro' ); ?></label>
    <select name="search_n_filter[filter_box]" data-name='filter_box' id="wptf_filter_box" class="wptf_fullwidth wptf_data_filed_atts" >
        <option value="no" <?php echo isset( $meta_search_n_filter['filter_box'] ) && $meta_search_n_filter['filter_box'] == 'no' ? 'selected' : ''; ?>><?php esc_html_e( 'No Filter', 'wptf_pro' ); ?></option>
        <option value="yes" <?php echo isset( $meta_search_n_filter['filter_box'] ) && $meta_search_n_filter['filter_box'] == 'yes' ? 'selected' : ''; ?>><?php esc_html_e( 'Filter Show', 'wptf_pro' ); ?></option>
    </select>
</div>
<div class="wptf_column">
    <label class="wptf_label" for="wptf_filter"><?php esc_html_e( 'Taxonomy Keywords for Filter (Separate with comma[,])', 'wptf_pro' ); ?></label>
    <input name="search_n_filter[filter]" data-name='filter' id="wptf_filter" value="<?php echo isset( $meta_search_n_filter['filter'] ) ?$meta_search_n_filter['filter'] : 'product_cat,product_tag'; ?>" class="wptf_fullwidth wptf_data_filed_atts" type="text" value="" placeholder="<?php esc_attr_e( 'eg: product_cat,product_tag,color,size', 'wptf_pro' ); ?>">
    <p><?php echo sprintf( esc_html__( 'There are lot of %s for creating Taxonomy. For Example: You can use %s Plugin.', 'wptf_pro' ),
            '<a href="https://wordpress.org/plugins/search/Taxonomy/" target="_blank">Taxonomy Creator Plugin available</a>',
            '<a href="https://wordpress.org/plugins/wck-custom-fields-and-custom-post-types-creator/" target="_blank">Custom Post Types and Custom Fields creator – WCK</a>'
            );
    ?>
    </p>
</div>
