; Errors
display_errors = {{ .Env.PHP_DISPLAY_ERRORS }}
display_startup_errors = On
error_reporting = {{ .Env.PHP_ERROR_REPORTING }}
log_errors = On
error_log = /var/www/var/log/php_error.log

; Session
session.gc_maxlifetime = 7200

; File uploads
upload_max_filesize = 32M
post_max_size = 32M

; mail function
sendmail_path = "/usr/bin/msmtp -t -v"
