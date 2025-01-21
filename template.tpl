___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Google Ads Remarketing - ecomm_prodid",
  "description": "Get IDs from GA4 items array to send it to Google Ads for dynamic remarketing.",
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "idField",
    "displayName": "ID field",
    "simpleValueType": true,
    "defaultValue": "item_id"
  }
]


___SANDBOXED_JS_FOR_SERVER___

const items = require('getEventData')('items');
const event_name = require('getEventData')('event_name');
const log = require('logToConsole');
let ids = [];

if(items && items.length > 0) {
  items.forEach(function(item) {
    if(item[data.idField]) {
      ids.push(item[data.idField]);
    }
  });
  if(ids.length == 0) {
    log(data.idField + ' was not found in items array.');
  }
} else if(event_name != 'page_view') {
  log("items array in not available in Event Data.");
}

return ids;


___SERVER_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "read_event_data",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keyPatterns",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "items"
              },
              {
                "type": 1,
                "string": "event_name"
              }
            ]
          }
        },
        {
          "key": "eventDataAccess",
          "value": {
            "type": 1,
            "string": "specific"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 21/01/2025, 12:12:15


