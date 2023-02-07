[servers]
%{ for item in hosts_list ~}
${item.hostname} ansible_host=${item.public_ip}
%{ endfor ~}
