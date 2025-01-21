# Google Ads Remarketing - ecomm_prodid

## Description

This Google Tag Manager (Server-Side) custom variable template extracts product IDs from the GA4 `items` array and prepares them for dynamic remarketing with Google Ads. It is designed to simplify the integration of Google Ads Remarketing by handling data collection directly from server-side events.

## Key Features

- **Retrieve Item IDs:** Extracts product IDs (`item_id` by default) from the `items` array in GA4 event data.
- **Event-Aware:** Logs warnings if `items` are missing in non-`page_view` events.
- **Dynamic Configuration:** Allows customization of the ID field through template parameters.

## Usage

### Template Parameters

| Parameter Name | Type  | Description                  | Default Value |
|----------------|-------|------------------------------|---------------|
| `idField`      | TEXT  | Field name for product IDs   | `item_id`     |

## Reporting Bugs/Feedback

Please raise any issues on GitHub or contact us directly at [support@addingwell.com](mailto:support@addingwell.com).

## Open Source

The Google Ads Remarketing - ecomm_prodid variable for GTM Server-Side is developed and maintained by [Addingwell](https://www.addingwell.com) under the Apache 2.0 license.