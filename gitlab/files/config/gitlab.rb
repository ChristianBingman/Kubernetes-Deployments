external_url 'http://git.acm.cs/'
gitlab_rails['lfs_enabled'] = true
gitlab_rails['ldap_enabled'] = true
prometheus['monitor_kubernetes'] = false
gitlab_rails['ldap_servers'] = YAML.load <<-'EOS'
 main: # 'main' is the GitLab 'provider ID' of this LDAP server
  label: 'ACM AD Server'
  host: 'ad.acm.cs'
  port: 636
  uid: 'sAMAccountName'
  bind_dn: 'CN=Gitlab SA,OU=ServiceUsers,DC=acm,DC=cs'
  # Set your sa password here
  password: ''
  # Start tls seems to not function properly
  encryption: 'simple_tls' # "start_tls" or "simple_tls" or "plain"
  verify_certificates: false
  base: 'dc=acm,dc=cs'
EOS
