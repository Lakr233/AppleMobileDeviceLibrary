
#ifndef __DEVICE_ADDONS_0_H
#define __DEVICE_ADDONS_0_H

idevice_error_t idevice_new(idevice_t * device, const char *udid);
idevice_error_t idevice_new_network(idevice_t * device, const char *udid, const void* conn_data, int conn_data_len);
idevice_error_t idevice_new_network_ipv4(idevice_t * device, const char *udid, const char *v4_address);
#ifdef AF_INET6
idevice_error_t idevice_new_network_ipv6(idevice_t * device, const char *udid, const char *v6_address);
#endif

#endif
