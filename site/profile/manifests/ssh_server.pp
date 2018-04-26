class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCs83pLUFyzVjIa06LLEM1VjcWwLL/xq4Nk+MtwcnvjIWJSWcfgNIdW1A09zn/XRv5X69zBzuOUYYaOSFkINyGCfRYsx2KSuhA42rNp0VFBuiiAvu2kp706hjFAbz5/2VOEN4bUQT51Q+widS6E7DSTba+3iJdHnU5DaN6nSqWAaQ4n3Nzk3Av4wrTMNn4TYWO8uzVG7Wg/xORckkD5e1jr66JayUY2Ygl879cbabfQj3iT/xeel9wtm1Uo+SLIp7z1m9MLdLnx3CCNS2NW57NpK59kayvacZQrHNsqOfSeuK3LC5AAX7y+5550BDpv+Dga/jVoSuQYa5jDsc6+eqnx root@master.puppet.vm',
	}  
}
