## 1.0.0

 - Support Mongoid 7 and CanCanCan 3.x [@mshibuya](https://github.com/mshibuya)
 - Allow querying nested unloaded associations using a database query.
   [@lowjoel](https://github.com/lowjoel)

## 0.1.3

### enhancements

 - Support ranges in conditions [@lowjoel](https://github.com/lowjoel) 

## 0.1.2

### enhancements

 - Remove unnecessary joins when performing algebraic simplification
   [@lowjoel](https://github.com/lowjoel)
 - Allow querying an unloaded association using a database query. For rules which reference 
   associations, and the association is not currently loaded, an SQL query will be executed 
   instead to verify the rule instead of loading all rows to memory
   [@lowjoel](https://github.com/lowjoel)
 - Add Frozen String Literal directive [@lowjoel](https://github.com/lowjoel)

## 0.1.1

### enhancements

 - Added usage instructions. [@lowjoel](https://github.com/lowjoel)

### bug fixes

 - Follow CanCanCan's default ability rule priority [@lowjoel](https://github.com/lowjoel)
 - Fix generation of comparison operators for array values [@lowjoel](https://github.com/lowjoel)

## 0.1.0

Initial release.
