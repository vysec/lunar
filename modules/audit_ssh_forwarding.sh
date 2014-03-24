# audit_ssh_forwarding
#
# This one is optional, generally required for apps
#.

audit_ssh_forwarding () {
  if [ "$os_name" = "SunOS" ] || [ "$os_name" = "Linux" ] || [ "$os_name" = "Darwin" ]; then
    if [ "$os_name" = "Darwin" ]; then
      check_file="/etc/sshd_config"
    else
      check_file="/etc/ssh/sshd_config"
    fi
    funct_verbose_message "SSH Forwarding"
    funct_file_value $check_file AllowTcpForwarding space yes hash
  fi
}