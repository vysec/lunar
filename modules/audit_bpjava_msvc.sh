# audit_bpjava_msvc
#
# BPJava Service
#
# Turn off bpjava-msvc if not required. It is associated with NetBackup.
#.

audit_bpjava_msvc () {
  if [ "$os_name" = "SunOS" ]; then
    if [ "$os_version" = "10" ] || [ "$os_version" = "11" ]; then
      funct_verbose_message "BPJava Service"
      service_name="svc:/network/bpjava-msvc/tcp:default"
      funct_service $service_name disabled
    fi
  fi
}
