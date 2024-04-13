<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', $WORDPRESS_DB_NAME );

/** Database username */
define( 'DB_USER', 'user42' );

/** Database password */
define( 'DB_PASSWORD', 'password' );

/** Database hostname */
define( 'DB_HOST', 'db' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'HL!1-HSez8;-3Nnf|G`b{vVt52:!yjGYLE~;^n}f%X-SboPx1SU68E}wq%Jvj7vW');
define('SECURE_AUTH_KEY',  'e<%n7,i)DSDR#)IrJ/TRuCX63q0q*8Dq2[GY+[{dj],N6lpTWs[>bbJ&x|I`i- }');
define('LOGGED_IN_KEY',    'p>u1X8<w-=>?Er)@:tbNC`)7{:&`L1vf}%jbJLe?Nec012j[N:R9&wJRR<O~y(Ic');
define('NONCE_KEY',        'G>k6YS<58^9#EWt||;*(YQk4HAZnP[Dmmf^HY:Z7|9{/43;Nz7E~ D0Z6BO`JuXj');
define('AUTH_SALT',        '!v@|_WBEal8xu|jy:nB>))(V+d&}Y0VO)!cyxmqYI&L];A>bx*#3z`9_nf:qY1q+');
define('SECURE_AUTH_SALT', '~JLk?8R#hf$1C{9NGtnk,fi|P5Oo(gI1OGk/12TdPGE>3aHYZtfi}MuF5Fu+I+JJ');
define('LOGGED_IN_SALT',   'L*yO&9t:D!ra&$km2|+iWLsexN6X5:QR1:m=xw+`|!EAp@Qbvkd2 !-nawH/-QbT');
define('NONCE_SALT',       ':5QA60S0}/Km9k!soq!yPq{e!9&$0-O5V3Ez4u;WFmUuWD}jROq?Rg|55-Xqk#pL');
/**#@-*/

/**
 * WordPress database table prefix.
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
 * @link https://developer.wordpress.org/advanced-administration/debug/debug-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
