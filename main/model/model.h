#ifndef MODEL_H_INCLUDED
#define MODEL_H_INCLUDED

#include <stdint.h>
#include <stdlib.h>

#define PWOFF_SERIALIZED_SIZE 4

typedef struct {
    uint16_t credito;
} pwoff_data_t;

typedef struct {
    pwoff_data_t pwoff;
} model_t;

void          model_init(model_t *pmodel);
size_t        model_pwoff_serialize(model_t *pmodel, uint8_t buff[static PWOFF_SERIALIZED_SIZE]);
size_t        model_pwoff_deserialize(model_t *pmodel, uint8_t *buff);

#endif
