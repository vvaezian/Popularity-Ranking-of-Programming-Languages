## Logic

### C
```sql
tags like '%<c>%'
```

### C++
```sql
tags like '%c++%'
```

### C#
```sql
tags like '%c#%'
```

### CSS
```sql
tags like '%css%'
```

### HTML
```sql
tags like '%html%'
```

### Java
```sql
(tags like '%java%' and tags not like '%javascript%') 
or (tags like '%javascript%' and tags like '%java[^s]%')
```

### Javascript
```sql
tags like '%javascript%' 
or tags like '%jquery%' 
or tags like '%.js%'
or tags like '%reactjs%'
or tags like '%angularjs%'
```

### Objective C
```sql
tags like '%objective-c%'
```

### PHP
```sql
tags like '%php%'
```

### Ruby
```sql
tags like '%ruby%'
```
### Python
```sql
(tags like '%py%' and tags not like '%jupyter%' and tags not like '%Capybara%' and tags not like '%copy\-paste%') 
or (tags like '%py[^t]%' and tags like '%jupyter%') 
or tags like '%pandas%'
or tags like '%keras%'
```

### R
```sql
tags like '%<r>%'
```

### Scala
```sql
(tags like '%scala%' and tags not like '%scalability%') 
or (tags like '%scala%' and tags like '%scalability%')
```

----------------------------------
### SQL (All)
```sql
tags like '%sql%' 
and tags not like '%nosql%'
```

### MySQL
```sql
tags like '%mysql%'
or tags like '%mariadb%'
```

### Oracle
```sql
tags like '%oracle%'
or tags like '%plsql%'
```

### PostgreSQL
```sql
tags like '%pgsql%' or tags like '%postgresql%'
```

### SQL Server
```sql
tags like '%tsql%' or tags like '%sql-server%'
```

### NoSQL (All)
```sql
tags like '%nosql%'
or tags like '%mongodb%'
or tags like '%dynamodb%'
or tags like '%cassandra%'
or tags like '%redis%'
or tags like '%hbase%' -- captures '%couchbase%' as well
or tags like '%neo4j%'
or tags like '%arangodb%'
```



