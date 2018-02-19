{
    "id": "278e3c70-a5c8-4014-b9c6-64dadc28abcd",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "o_bullet",
    "eventList": [
        {
            "id": "b7fef3ac-94b2-4131-99e6-fbb863fc456a",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 7,
            "eventtype": 7,
            "m_owner": "278e3c70-a5c8-4014-b9c6-64dadc28abcd"
        },
        {
            "id": "cc45f1b8-bdbc-40f1-a3cc-1820edf59e13",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 77,
            "eventtype": 8,
            "m_owner": "278e3c70-a5c8-4014-b9c6-64dadc28abcd"
        },
        {
            "id": "995a27f4-76dd-470e-8b7d-cf3081217c76",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "1302763a-2f54-44ce-9d45-e923518ecef6",
            "enumb": 0,
            "eventtype": 4,
            "m_owner": "278e3c70-a5c8-4014-b9c6-64dadc28abcd"
        },
        {
            "id": "83dcda72-b2f1-4a55-8172-4927fe60efb3",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "278e3c70-a5c8-4014-b9c6-64dadc28abcd"
        },
        {
            "id": "de3c9e2f-b5c1-47c0-bcc5-8a496e0fb525",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "2c956f93-892e-4719-b310-de143dc729f7",
            "enumb": 0,
            "eventtype": 4,
            "m_owner": "278e3c70-a5c8-4014-b9c6-64dadc28abcd"
        },
        {
            "id": "f76f6d7a-fde6-47fb-ab80-bb7be6cc49ee",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "754eaacf-f583-474b-b7d0-570d0697d8d0",
            "enumb": 0,
            "eventtype": 4,
            "m_owner": "278e3c70-a5c8-4014-b9c6-64dadc28abcd"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": null,
    "parentObjectId": "00000000-0000-0000-0000-000000000000",
    "persistent": false,
    "physicsAngularDamping": 0.1,
    "physicsDensity": 0.5,
    "physicsFriction": 0.2,
    "physicsGroup": 0,
    "physicsKinematic": false,
    "physicsLinearDamping": 0.1,
    "physicsObject": false,
    "physicsRestitution": 0.1,
    "physicsSensor": false,
    "physicsShape": 1,
    "physicsShapePoints": null,
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "747895e2-70f9-4d3a-9058-f84a1055b210",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "x",
            "varName": "start_x",
            "varType": 0
        },
        {
            "id": "522a6f1a-907a-474e-921c-a743742cc99f",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "y",
            "varName": "start_y",
            "varType": 0
        },
        {
            "id": "62543292-1765-4482-ad68-bdd06c75ae3b",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "bullet_range",
            "varType": 0
        },
        {
            "id": "c3035656-a4eb-4f8c-89a7-710fd96a5b4c",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "1",
            "varName": "atk_damage",
            "varType": 0
        },
        {
            "id": "8c4897c4-a94a-4f5d-a6d7-f0b05f559888",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "5",
            "varName": "push_back_speed",
            "varType": 0
        },
        {
            "id": "b0e6978f-c9b3-4778-832c-82fd411d713d",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "hit",
            "varType": 0
        }
    ],
    "solid": false,
    "spriteId": "f5d6e15c-4edf-49e3-ae10-13e2b75dab92",
    "visible": true
}