## 2.0.1

* [#13](https://github.com/CanCanCommunity/cancancan-mongoid/pull/13): Support Mongoid 7.1. ([@vsevolod][])

## 2.0.0

* Support Mongoid 7 and CanCanCan 3.x. ([@mshibuya][])
* Allow querying nested unloaded associations using a database query. ([@lowjoel][])

## 0.1.3

### enhancements

* Support ranges in conditions. ([@lowjoel][]) 

## 0.1.2

### enhancements

* Remove unnecessary joins when performing algebraic simplification. ([@lowjoel][])
* Allow querying an unloaded association using a database query. For rules which reference 
   associations, and the association is not currently loaded, an SQL query will be executed 
   instead to verify the rule instead of loading all rows to memory. ([@lowjoel][])
* Add Frozen String Literal directive. ([@lowjoel][])

## 0.1.1

### enhancements

* Added usage instructions. ([@lowjoel][])

### bug fixes

* Follow CanCanCan's default ability rule priority. ([@lowjoel][])
* Fix generation of comparison operators for array values. ([@lowjoel][])

## 0.1.0

Initial release.

[@lowjoel]: https://github.com/lowjoel
[@mshibuya]: https://github.com/mshibuya
[@vsevolod]: https://github.com/vsevolod
