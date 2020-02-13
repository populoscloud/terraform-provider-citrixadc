## 0.12.9 (February 13, 2020)

FEATURES:

* **New Resource:** `nsip`
* **New Resource:** `nsfeature`
* **New Resource:** `systemuser`
* **New Resource:** `systemgroup`
* **New Resource:** `systemcmdpolicy`

ENHANCEMENTS:

* Add lbmonitor bindings is resource/gslbservice

## 0.12.8 (January 31, 2020)

FEATURES:

* **New Resource:** `responderaction`
* **New Resource:** `responderpolicy`
* **New Resource:** `responderpolicylabel`
* **New Resource:** `rewriteaction`
* **New Resource:** `rewritepolicy`
* **New Resource:** `rewritepolicylabel`


## 0.12.7 (November 18, 2019)

BUG FIXES:

* resource/sslcertkey: Unlink the certkey resource before deletion.

## 0.12.6 (October 11, 2019)

BUG FIXES:

* resource/sslcertkey: Implement link/unlink operation for certkeys.

## 0.12.5 (October 8, 2019)

ENHANCEMENTS:

* Update go-nitro library for NITRO version v12.1.53.12
* Update resource/servicegroup with new attributes for NITRO version v12.1.53.12
* Update resource/server with new attributes for NITRO version v12.1.53.12

## 0.12.4 (September 18, 2019)

BUG FIXES:

* Fix goreleaser file to output the correct binary name.

## 0.12.3 (September 16, 2019)

NOTES:

* Rename resources and provider to citrixadc to conform with company policy.

## 0.12.2 (August 27, 2019)

BUG FIXES:

* resource/server: Correctly handle state change.
* resource/service: Correctly handle state change.
* resource/servicegroup: Correctly handle state change.
* resource/gslbservice: Correctly handle state change.
* resource/lbvserver: Correctly handle state change.
* resource/csvserver: Correctly handle state change.
* resource/gslbvserver: Correctly handle state change.
* resource/nsacl: Correctly handle state change.

## 0.12.1 (August 22, 2019)

BUG FIXES:

* resource/cspolicy: Take into account priority when no lbvserver is specified.
* resource/sslcertkey: Update schema with `ForceNew: true` for immutable attributes.
* resource/servicegroup: Update schema with `ForceNew: true` for immutable attributes.
* resource/service: Update schema with `ForceNew: true` for immutable attributes.
* resource/server: Update schema with `ForceNew: true` for immutable attributes.
* resource/lbvserver: Update schema with `ForceNew: true` for immutable attributes.
* resource/lbmonitor: Update schema with `ForceNew: true` for immutable attributes.
* resource/inat: Update schema with `ForceNew: true` for immutable attributes.
* resource/gslbvserver: Update schema with `ForceNew: true` for immutable attributes.
* resource/gslbsite: Update schema with `ForceNew: true` for immutable attributes.
* resource/gslbservice: Update schema with `ForceNew: true` for immutable attributes.
* resource/csvserver: Update schema with `ForceNew: true` for immutable attributes.

## 0.12.0 (June 13, 2019)

ENHANCEMENTS:

* resource/sslcertkey: Enhance acceptance tests to use certificates generated in testdata.
* Update provider to use terraform 0.12

BUG FIXES:

* resource/csvserver: Implement ciphers attribute.
* resource/lbvserver: Implement ciphers attribute.
* resource/lbvserver: Fix snisslcerts bindings.

## 0.11.14 (June 4, 2019)

ENHANCEMENTS:

* resouce/lbvserver: Implement SNI ssl certificate bindings

## 0.11.13 (May 30, 2019)

BUG FIXES:

* resource/sslcertkey: Add `ForceNew: true` for certkey attribute.

## 0.11.12 (May 14, 2019)

BUG FIXES:

* resource/sslcertkey: Fix handling of nodomaincheck attribute.

## 0.11.11 (May 14, 2019)

BUG FIXES:

* resource/server: Add `ForceNew: true` for name attribute.

## 0.11.10 (April 18, 2019)

FEATURES:

* **New Resource:** `server`

ENHANCEMENTS:

* Update go-nitro depndency to latest version.

## 0.11.9 (March 13, 2019)

ENHANCEMENTS:

* Update resources to NITRO 12.1 version.
* Update go-nitro dependency to latest NITRO 12.1 version.
* resource/servicegroup: Add `servicegroupmember_by_servername` resource attribute.

## 0.11.8.1 (October 15, 2018)

ENHANCEMENTS:

* resource/lbvserver: Implement ssl profile support.
* resource/csvserver: Implement ssl profile support.


## 0.11.8 (September 18, 2018)

FEATURES:

* **New Resource:** `gslbservice`
* **New Resource:** `gslbserver`
* **New Resource:** `gslbsite`
