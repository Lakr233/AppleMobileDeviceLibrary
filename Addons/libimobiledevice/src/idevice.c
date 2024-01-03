
#include <string.h>
#ifdef WIN32
#else
#include <arpa/inet.h>
#endif

LIBIMOBILEDEVICE_API idevice_error_t idevice_new_network(idevice_t * device, const char *udid, const void* conn_data, int conn_data_len)
{
	idevice_t new_dev = (idevice_t)malloc(sizeof(struct idevice_private));
	if (!new_dev) return IDEVICE_E_UNKNOWN_ERROR;

	char* udid_str = strdup(udid);
	if (!udid_str) {
		free(new_dev);
		return IDEVICE_E_UNKNOWN_ERROR;
	}

	void *conn_data_copy = malloc(conn_data_len);
	if (!conn_data_copy) {
		free(new_dev);
		free((void*)udid_str);
		return IDEVICE_E_UNKNOWN_ERROR;
	}
	memcpy(conn_data_copy, conn_data, conn_data_len);

	new_dev->udid = udid_str;
	new_dev->mux_id = 0;
	new_dev->version = 0;
	new_dev->device_class = 0;
	new_dev->conn_type = CONNECTION_NETWORK;
	new_dev->conn_data = conn_data_copy;

	*device = new_dev;

	return IDEVICE_E_SUCCESS;
}

LIBIMOBILEDEVICE_API idevice_error_t idevice_new_network_ipv4(idevice_t * device, const char *udid, const char *v4_address)
{
	struct sockaddr_in *addr = (struct sockaddr_in*)malloc(sizeof(struct sockaddr_in));
	if (!addr) return IDEVICE_E_UNKNOWN_ERROR;

	addr->sin_family = AF_INET;
	addr->sin_port = 0;
	if (inet_pton(AF_INET, v4_address, &addr->sin_addr) != 1) {
		free(addr);
		return IDEVICE_E_UNKNOWN_ERROR;
	}

	int ret = idevice_new_network(device, udid, addr, sizeof(struct sockaddr_in));
	free(addr);
	return ret;
}

#ifdef AF_INET6
LIBIMOBILEDEVICE_API idevice_error_t idevice_new_network_ipv6(idevice_t * device, const char *udid, const char *v6_address)
{
	struct sockaddr_in6 *addr = (struct sockaddr_in6*)malloc(sizeof(struct sockaddr_in6));
	if (!addr) return IDEVICE_E_UNKNOWN_ERROR;

	addr->sin6_family = AF_INET6;
	addr->sin6_port = 0;
	if (inet_pton(AF_INET6, v6_address, &addr->sin6_addr) != 1) {
		free(addr);
		return IDEVICE_E_UNKNOWN_ERROR;
	}

	int ret = idevice_new_network(device, udid, addr, sizeof(struct sockaddr_in6));
	free(addr);
	return ret;
}
#endif
