#include <assert.h>
#include "gel/timer/stopwatch.h"
#include "model.h"
#include "gel/crc/crc16-ccitt.h"
#include "gel/serializer/serializer.h"
#include "peripherals/timer.h"
#include "gel/parameter/parameter.h"


void model_init(model_t *pmodel) {
    pmodel->pwoff.credito     = 0;
}

size_t model_pwoff_serialize(model_t *pmodel, uint8_t buff[static PWOFF_SERIALIZED_SIZE]) {
    size_t i = 2;
    i += serialize_uint16_be(&buff[i], pmodel->pwoff.credito);
    unsigned short crc = crc16_ccitt(&buff[2], i - 2, 0);
    serialize_uint16_be(&buff[0], crc);
    assert(i == PWOFF_SERIALIZED_SIZE);
    return i;
}


size_t model_pwoff_deserialize(model_t *pmodel, uint8_t *buff) {
    size_t   i = 0;
    uint16_t crc;
    i += deserialize_uint16_be(&crc, &buff[i]);
    if (crc != crc16_ccitt(&buff[2], PWOFF_SERIALIZED_SIZE - 2, 0)) {
        return -1;
    } else {
        i += deserialize_uint16_be(&pmodel->pwoff.credito, &buff[i]);
    }

    assert(i == PWOFF_SERIALIZED_SIZE);
    return i;
}

