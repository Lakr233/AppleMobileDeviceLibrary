//
//  main.c
//  Playground
//
//  Created by 秋星桥 on 2024/1/4.
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <libimobiledevice/libimobiledevice.h>

int main(int argc, const char * argv[]) {
    idevice_t device;
    if (idevice_new_network_ipv4(&device, "", "") != IDEVICE_E_SUCCESS) {
        printf("failed\n");
        exit(1);
    }
    lockdownd_client_t ldc;
    if (lockdownd_client_new(device, &ldc, "") != IDEVICE_E_SUCCESS) {
        printf("failed\n");
        exit(1);
    }
    
    return 0;
}
