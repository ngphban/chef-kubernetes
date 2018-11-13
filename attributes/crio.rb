default['kubernetes']['crio']['version']                     = '1.12.1'
default['kubernetes']['crio']['endpoint']                    = '/var/run/crio/crio.sock'
default['kubernetes']['crio']['endpoint_proto']              = 'unix://'
default['kubernetes']['buildah']['version']                  = '1.4'
default['kubernetes']['libpod']['version']                   = '0.11.1'
default['kubernetes']['skopeo']['version']                   = '0.1.32'

default['kubernetes']['checksums']['skopeo']['bionic']       = 'f75adb08b56b01b0096d0734271d732b92819885470321a7fc6dc0e16d4443e0'
default['kubernetes']['checksums']['podman']['bionic']       = '1006f2e80ef23debeb195aa8baad64b9e96a74a83a635129c8d7ff8a10d8ef8a'
default['kubernetes']['checksums']['conmon']['bionic']       = '8e076e061b0566ba35ab03e3d52944a1ccd33347b8bc324bfbdedd493e76715a'
default['kubernetes']['checksums']['crio']['bionic']         = '46359cede15c2319f982a8f3b3c26d4424011886dea471c1ecd838d95f3d9e9e'
default['kubernetes']['checksums']['buildah']['bionic']      = 'ea737e861c71bba578b75001a8bf0d60e2cf69f06127deda61c3ad627a4d6bf4'

default['kubernetes']['checksums']['skopeo']['xenial']       = 'b4d85d321bbbe47dc95d613d37b9b0ee226e60d1af48d6e70fa6dd9ef517f830'
default['kubernetes']['checksums']['podman']['xenial']       = '228c2bd319e68e54e8e32197046cf151e282c09aaba68447c78fdf67991f7a28'
default['kubernetes']['checksums']['conmon']['xenial']       = 'eda077d35cebe2a6b799c9234e77df9a0e30a5c35797dad7f8176e031c05b1da'
default['kubernetes']['checksums']['crio']['xenial']         = '168d39cc175b6a5f393ae4874a83890fa8bbae6ae061befc3550bc45704c202f'
default['kubernetes']['checksums']['buildah']['xenial']      = '5b1f4b24782447d87c5a2fa21617c4b27e06768170c8e9c8bed3f8181b2ec191'

default['kubernetes']['crio']['config']['conmon']            = '/usr/local/bin/conmon'
default['kubernetes']['crio']['config']['storage_driver']    = 'overlay'
default['kubernetes']['crio']['config']['stream_port']       = 10010
default['kubernetes']['crio']['config']['runroot']           = '/var/run/containers/storage'
default['kubernetes']['crio']['config']['root']              = '/var/lib/containers/storage'
default['kubernetes']['crio']['config']['log_level']         = 'info'
default['kubernetes']['crio']['config']['file_locking']      = false
default['kubernetes']['crio']['config']['file_locking_path'] = '/run/crio.lock'
default['kubernetes']['crio']['config']['cgroup_manager']    = 'cgroupfs'
default['kubernetes']['crio']['config']['apparmor_profile']  = 'crio-default'
default['kubernetes']['crio']['config']['seccomp_profile']   = '/etc/crio/seccomp.json'
default['kubernetes']['crio']['config']['pids_limit']        = 1024

default['kubernetes']['crio']['config']['runtimes'] = {
  'trusted'   => '/usr/local/bin/runc',
  'untrusted' => '/usr/local/bin/runsc'
}

default['kubernetes']['crio']['config']['runtimes']['untrusted']       = '/usr/local/bin/runsc'
default['kubernetes']['crio']['config']['container_exits_dir']         = '/var/run/crio/exits'
default['kubernetes']['crio']['config']['container_attach_socket_dir'] = '/var/run/crio'

default['kubernetes']['crio']['daemon_flags']['log_format']     = 'text'
default['kubernetes']['crio']['daemon_flags']['profile']        = false
default['kubernetes']['crio']['daemon_flags']['enable_metrics'] = true
default['kubernetes']['crio']['daemon_flags']['metrics_port']   = 9090

default['kubernetes']['crio']['policies']['default'] = [{"type"=>"insecureAcceptAnything"}]
default['kubernetes']['crio']['policies']['transports']['docker-daemon'][''] = [{"type"=>"insecureAcceptAnything"}]

default['kubernetes']['crio']['crictl']['version'] = '1.12.0'
default['kubernetes']['crio']['crictl']['timeout'] = 10
default['kubernetes']['crio']['crictl']['debug']   = false

default['kubernetes']['limits']['nofile']['crio'] = 1048576
default['kubernetes']['limits']['nproc']['crio']  = 1048576
default['kubernetes']['limits']['core']['crio']   = 'infinity'
