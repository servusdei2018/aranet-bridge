file(GLOB srcs "*.c" "*.h")

idf_component_register(SRCS "${srcs}"
                       PRIV_REQUIRES esp_wifi nvs_flash
                       INCLUDE_DIRS ".")