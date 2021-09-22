defaults

logfile        /var/log/msmtp/msmtp.log

# gmail
account        gmail
host           smtp.gmail.com
auth           on
port           465
from           myproject@gmail.com
user           myproject@gmail.com
passwordeval   "echo $MAILER_PASSWORD"
auth           on
tls            on
tls_trust_file /etc/ssl/certs/ca-certificates.crt
# https://wiki.archlinux.org/index.php/msmtp#Server_sent_empty_reply
tls_starttls   off

# mailcatcher (local)
account         mailcatcher
host            10.0.2.2
port            1025
from            dummy@myproject.com
auth            off
tls             off

# Set a default account
account default : {{ .Env.SMTP_ACCOUNT }}
