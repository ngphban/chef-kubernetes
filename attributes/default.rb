default['kubernetes']['container_runtime']                  = 'docker'
default['kubernetes']['roles']['master']                    = 'kubernetes_master'
default['kubernetes']['roles']['node']                      = 'kubernetes_node'
default['kubernetes']['install_via']                        = 'systemd' # other possible values are: static_pods
default['kubernetes']['databag']                            = 'kubernetes'
default['kubernetes']['version']                            = 'v1.13.2'
default['kubernetes']['keep_versions']                      = 3
default['kubernetes']['image']                              = 'gcr.io/google_containers/hyperkube'
default['kubernetes']['interface']                          = 'eth1'
default['kubernetes']['enable_firewall']                    = true
default['kubernetes']['register_as']                        = 'ip'
default['kubernetes']['proxy_mode']                         = 'iptables' # other possible values are: ipvs
default['kubernetes']['use_sdn']                            = true
default['kubernetes']['sdn']                                = 'weave'
default['kubernetes']['master']                             = '127.0.0.1'
default['kubernetes']['cluster_name']                       = 'kubernetes'
default['kubernetes']['cluster_dns']                        = ['10.222.222.222']
default['kubernetes']['cluster_domain']                     = 'kubernetes.local'
default['kubernetes']['cluster_cidr']                       = '192.168.0.0/16'
default['kubernetes']['node_cidr_mask_size']                = 24
default['kubernetes']['use_cluster_dns_systemwide']         = false
default['kubernetes']['ssl']['keypairs']                    = %w(apiserver ca)
default['kubernetes']['ssl']['ca']['public_key']            = '/etc/kubernetes/ssl/ca.pem'
default['kubernetes']['ssl']['ca']['private_key']           = '/etc/kubernetes/ssl/ca-key.pem'
default['kubernetes']['ssl']['apiserver']['public_key']     = '/etc/kubernetes/ssl/apiserver.pem'
default['kubernetes']['ssl']['apiserver']['private_key']    = '/etc/kubernetes/ssl/apiserver-key.pem'
default['kubernetes']['kubeconfig']                         = '/etc/kubernetes/kubeconfig.yaml'
default['kubernetes']['tls_cert_file']                      = '/etc/kubernetes/ssl/apiserver.pem'
default['kubernetes']['tls_private_key_file']               = '/etc/kubernetes/ssl/apiserver-key.pem'
default['kubernetes']['client_ca_file']                     = '/etc/kubernetes/ssl/ca.pem'
default['kubernetes']['requestheader_client_ca_file']       = '/etc/kubernetes/ssl/ca.pem'
default['kubernetes']['service_account_key_file']           = '/etc/kubernetes/ssl/ca-key.pem'
default['kubernetes']['cluster_signing_cert_file']          = '/etc/kubernetes/ssl/ca.pem'
default['kubernetes']['cluster_signing_key_file']           = '/etc/kubernetes/ssl/ca-key.pem'
default['kubernetes']['token_auth']                         = false
default['kubernetes']['token_auth_file']                    = '/etc/kubernetes/known_tokens.csv'
default['kubernetes']['docker']['endpoint']                 = 'unix:///var/run/docker.sock'
default['kubernetes']['cgroupdriver']                       = 'cgroupfs'
default['kubernetes']['audit']['enabled']                   = true
default['kubernetes']['audit']['log_path']                  = '/var/log/kubernetes/audit.log'
default['kubernetes']['audit']['log_format']                = 'json' # Known formats are legacy,json.
default['kubernetes']['audit']['log_mode']                  = 'blocking' # Known modes are batch,blocking.
default['kubernetes']['audit']['log_maxbackup']             = 3
default['kubernetes']['audit']['log_maxsize']               = 10
default['kubernetes']['audit']['policy_file']               = '/etc/kubernetes/audit-policy.yaml'
default['kubernetes']['feature_gates']                      = {
  'VolumeSubpathEnvExpansion' => true,
  'NodeLease'                 => true,
  'TTLAfterFinished'          => true,
}
default['kubernetes']['packages']['storage_url']            = "https://storage.googleapis.com/kubernetes-release/release/#{node['kubernetes']['version']}/bin/linux/amd64/"
default['kubernetes']['checksums']['apiserver']             = '4a9a87f06a73f85a5e3ae36e79902dfec635ea1409bb3ddb42fc8e530db86cf2'
default['kubernetes']['checksums']['controller-manager']    = '6155f22eea8e1a50eb7a8159e4f08a2af4bfa211d2cdeeb8a63c2a68089efb71'
default['kubernetes']['checksums']['proxy']                 = '063b10ef73661a9e4cd144d7beb5214a6ecb60c65714d5fd653410062e400f86'
default['kubernetes']['checksums']['scheduler']             = '9e57b70f36e8775d563ccf492cae52e9e740c8e2d57c4317826714cdffb46e54'
default['kubernetes']['checksums']['kubectl']               = '2c7ab398559c7f4f91102c4a65184e0a5a3a137060c3179e9361d9c20b467181'
default['kubernetes']['checksums']['kubelet']               = 'bf97d7bde7fa48492114d4611c358a4b881fe3d6d6217cc50e360c537ffa309d'
default['kubernetes']['addon_manager']['version']           = 'v8.6'
default['kubernetes']['multimaster']['access_via']          = 'haproxy' # other possible values are: direct, dns
default['kubernetes']['multimaster']['haproxy_url']         = '127.0.0.1'
default['kubernetes']['multimaster']['haproxy_port']        = 6443
default['kubernetes']['multimaster']['dns_name']            = ''
default['kubernetes']['encryption']                         = 'aescbc'
default['kubernetes']['cni']['version']                     = '0.6.0'
default['kubernetes']['cni']['plugins_version']             = '0.7.1'
default['kubernetes']['cni']['plugins'] = {
  'bridge'	=>true,
  'dhcp'	=>true,
  'flannel'	=>true,
  'host-device'	=>true,
  'host-local'	=>true,
  'ipvlan'	=>true,
  'loopback'	=>true,
  'macvlan'	=>true,
  'portmap'	=>true,
  'ptp'	        =>true,
  'sample'	=>true,
  'tuning'	=>true,
  'vlan'	=>true,
}
default['kubernetes']['node']['packages'] = {
  'iptables'            => true,
  'ebtables'            => true,
  'socat'               => true,
  'ethtool'             => true,
  'kmod'                => true,
  'tcpd'                => true,
  'dbus'                => true,
  'apt-transport-https' => true,
  'conntrack'           => true,
}
