#### C
```sql
tags like '%<c>%'
```

#### C++
```sql
tags like '%c++%'
```

#### C#
```sql
tags like '%c#%'
```

#### Clojure
```sql
tags like '%clojure%'
```


#### DB - MySQL
```sql
tags like '%mysql%'
or tags like '%mariadb%'
```

#### DB - Oracle
```sql
tags like '%oracle%'
or tags like '%plsql%'
```

#### DB - PostgreSQL
```sql
tags like '%pgsql%' 
or tags like '%postgresql%'
```

#### DB - SQL Server
```sql
tags like '%tsql%' 
or tags like '%sql-server%'
```

#### DB - SQL (All)
```sql
(tags like '%sql%' 
or tags like '%oracle%'
or tags like '%mariadb%')
and tags not like '%nosql%'
```

#### DB - NoSQL (All)
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

#### Haskell
```sql
tags like '%haskell%'
```

#### Go
```sql
tags like '%<go>%'
```

#### HTML/CSS
```sql
tags like '%html%'
or tags like '%css%'
```

#### Java
```sql
(tags like '%java%' and tags not like '%javascript%')  -- java but not javascript
or (tags like '%javascript%' and tags like '%java[^s]%')  -- java and javascript
or tags like '%spring%'
or tags like '%jsf%'
or tags like '%gwt%'
or tags like '%vaadin%'
or tags like '%struts%'
or tags like '%hibernate%'
or tags like '%dropwizard%'
```

#### Java (Mobile)
```sql
tags like '%java%' 
and tags like '%android%' 
and tags not like '%kotlin%'
```

#### Javascript
```sql
tags like '%javascript%' 
or tags like '%jquery%' 
or tags like '%js>%' -- tag ends with js
or tags like '%extjs%'  -- includes extjs4 and others
```

#### Julia
```sql
tags like '%julia%'
```

#### Kotlin
```sql
tags like '%kotlin%'
```

#### Objective-C
```sql
tags like '%objective-c%'
```

#### Perl
```sql
tags like '%<perl%'  -- starts with perl (excluding hyPERLink, ...)
```

#### PHP
```sql
tags like '%php%'
```

#### Python
```sql
(tags like '%py%' and tags not like '%jupyter%' and tags not like '%copy%' and tags not like '%Capybara%' ) 
or (tags like '%py[^t]%' and tags like '%jupyter%')  -- i.e. it is not just jupyter, it has something else py-like as well
or (tags like '%py[^>-]%' and tags like '%copy%') 
or tags like '%pandas%'
or tags like '%django%'
or tags like '%flask%'
or tags like '%scikit-learn%'
or tags like '%theano%'
or tags like '%matplotlib%'
```

#### Python (Data Science)
```sql
tags like '%scikit-learn%'
or tags like '%pytorch%'
or tags like '%pyspark%' 
or tags like '%theano%'
or tags like '%numpy%'
or tags like '%scipy%'
or tags like '%pandas%' 
or tags like '%scrapy%'
or (tags like '%py%' and ( tags like '%keras%' 
                        or tags like '%tensorflow%'
                        or tags like '%machine-learning%'
                        or tags like '%deep-learning%'
                        or tags like '%h2o%'
                        or tags like '%artificial-intelligence%'
                         )
         )
```

#### R
```sql
tags like '%<r>%'
or tags like '%rstudio%'
or tags like '%shiny%'
```

#### Ruby
```sql
tags like '%ruby%'
```

#### Rust
```sql
tags like '%rust%'
```


#### Scala
```sql
(tags like '%scala%' and tags not like '%scalability%') 
or (tags like '%scala%' and tags like '%scalability%')
```

#### Swift
```sql
tags like '%swift%'
```

#### TypeScript
```sql
tags like '%typescript%'
```

#### VB.NET
```sql
tags like '%vb.net%'
```
