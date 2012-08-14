# omgλ!!11

Rails app that condenses and tests the ideas put forth in [Big Data](http://www.manning.com/marz/)

Implemented: Data load from a CSV to a mock schemaless data store. Originaly from [this](http://blog.pioneeringsoftware.co.uk/2010/07/13/import-csv-files-in-rails-3)  walkthrough and updated to rails 3.2.

To do:
* Optimize upload to eliminate inner looping and loading entire file into memory.
* Addition of a queue to allow larger files to upload without the site timing out.
* Replace mock schemaless data-store with an actual key-value store.
* Add a scheduled job to move large quantities of data from the (future) raw store into summary tables.
