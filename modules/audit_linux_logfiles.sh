# audit_linux_logfiles
#
# Check permission on log files under Linux. Make sure they are only readable
# by system accounts. This stops sensitive system information from being
# disclosed
#.

audit_linux_logfiles () {
  if [ "$os_name" = "Linux" ]; then
    funct_verbose_message "Log File Permissions"
    for log_file in boot.log btml cron dmesg ksyms httpd lastlog maillog \
      mailman messages news pgsql rpm pkgs sa samba scrollkeeper.log \
      secure spooler squid vbox wtmp; do
      if [ -f "/var/log/$log_file" ]; then
        funct_check_perms /var/log/$log_file 0600 root root
      fi
    done
  fi
}
