
* https://docs.gitlab.com/ce/administration/auth/ldap/

```
gitlab_rails['ldap_enabled'] = true
gitlab_rails['prevent_ldap_sign_in'] = false
gitlab_rails['ldap_servers'] = {
'main' => {
  'label' => 'LDAP',
  'host' =>  'ldap.mydomain.com',
  'port' => 389,
  'uid' => 'sAMAccountName',
  'encryption' => 'simple_tls',
  'verify_certificates' => true,
  'bind_dn' => '_the_full_dn_of_the_user_you_will_bind_with',
  'password' => '_the_password_of_the_bind_user',
  'encryption' => 'plain',
  'verify_certificates' => true,
  'tls_options' => {
    'ca_file' => '',
    'ssl_version' => '',
    'ciphers' => '',
    'cert' => '',
    'key' => ''
  },
  'timeout' => 10,
  'active_directory' => true,
  'allow_username_or_email_login' => false,
  'block_auto_created_users' => false,
  'base' => 'dc=example,dc=com',
  'user_filter' => '',
  'attributes' => {
    'username' => ['uid', 'userid', 'sAMAccountName'],
    'email' => ['mail', 'email', 'userPrincipalName'],
    'name' => 'cn',
    'first_name' => 'givenName',
    'last_name' => 'sn'
  },
  'lowercase_usernames' => false,

  # EE Only
  'group_base' => '',
  'admin_group' => '',
  'external_groups' => [],
  'sync_ssh_keys' => false
  }
}
```
