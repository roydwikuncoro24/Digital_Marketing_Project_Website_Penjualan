<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpres' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '2:GLO0EMuWFO_QA=ol?D69;)K>[Epi_JX|K/d55nG1IzbP(jl60]c5ehP=t6_P]W' );
define( 'SECURE_AUTH_KEY',  'JVZY+oYv?#x} BE$Q8c>e=|JVw:1Bn&T{ms9lPsq[$!iIt5c5;zs(Ff6L#*R23nD' );
define( 'LOGGED_IN_KEY',    '%w#8J%(Hs7E}^UaWi+i(k_|$<$A>@7KLX%!G(0v*4iL+$j0}FBqMzHpM;/(jVn#q' );
define( 'NONCE_KEY',        '=} !#BpL@*g,(&+W:Hqa- Y#sCnP+Pi/.}ZmW~ZXff[NOnt;yCNy[YB13)o4ob9l' );
define( 'AUTH_SALT',        'OT2]Lo2_JP|b.%d}|3CyTif.Rl=B/1IRvO 8LpL95b$,~JmJkXt!i~+`D_VPdg#=' );
define( 'SECURE_AUTH_SALT', '`H;Ba)yF?p+$7iLc,;)bsKysh>`QGEWIm*~[>0]u4>XFV{e*0tKC;52lUKklhHeR' );
define( 'LOGGED_IN_SALT',   '&)6-36*5n+rr~]>o)2%Cg*Xjgr;f_1o&YhRh[rT%?auhIKWmx2gzMWjNs@?1uTq7' );
define( 'NONCE_SALT',       'PO.%&_1dV@2TeFI?!O.Uo3PyYum@MjkiYW0o N2j<uG)S;GPwb!g:_WY]RLca@JM' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
