{
    "id": "0ff4c502-aadc-452b-8d10-6aec65608a95",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "o_enemy_fly",
    "eventList": [
        {
            "id": "7f6a1a06-00b7-4cd9-9f76-92f1d34128ac",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "0ff4c502-aadc-452b-8d10-6aec65608a95"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": [
        {
            "id": "c63aa0b4-01d6-46b6-9a00-3f1ccf6352c6",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "1302763a-2f54-44ce-9d45-e923518ecef6",
            "propertyId": "6fc62252-6710-41c0-886b-273995aee018",
            "value": "s_enemy_fly_D"
        },
        {
            "id": "01e97b68-0c6d-4adf-9a87-a46bd6dc15ff",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "1302763a-2f54-44ce-9d45-e923518ecef6",
            "propertyId": "ca1edbee-b000-4af0-8a23-92ec246c3e2b",
            "value": ".5"
        }
    ],
    "parentObjectId": "1302763a-2f54-44ce-9d45-e923518ecef6",
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
            "id": "bc16be20-2ba2-47f0-9b19-5d987b0d2697",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "y",
            "varName": "y_original",
            "varType": 4
        },
        {
            "id": "d91eec6b-2039-4fcf-88e7-3b43c6f59809",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "y_original + 100",
            "varName": "y_top",
            "varType": 4
        },
        {
            "id": "fb8b7b07-62b0-49ff-bb15-f17f8a864007",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "y_original - 100",
            "varName": "y_bot",
            "varType": 4
        }
    ],
    "solid": false,
    "spriteId": "bb855732-9f3e-47db-ae36-95f0ea20f369",
    "visible": true
}