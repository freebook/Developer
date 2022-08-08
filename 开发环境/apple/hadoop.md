# Hadoop

brew install hadoop

## configure



\#export LD\_LIBRARY\_PATH=/usr/local/opt/hadoop//libexec/share/hadoop/hdfs:$LD\_LIBRARY\_PATH

### 

### core-site.xml

/usr/local/Cellar/hadoop/2.8.0/libexec/etc/hadoop/core-site.xml

`<configuration>`

`<property>`

`<name>hadoop.tmp.dir</name>`

`<value>/usr/local/var/hadoop/hdfs</value>`

`<description>A base for other temporary directories.</description>`

`</property>`

`<property>`

`<name>fs.default.name</name>`

`<value>hdfs://localhost:9000</value>`

`</property>`

`</configuration>`

### mapred-site.xml

$ vim /usr/local/opt/hadoop/libexec/etc/hadoop/mapred-site.xml

&lt;?xml version="1.0"?&gt;

&lt;?xml-stylesheet type="text/xsl" href="configuration.xsl"?&gt;

&lt;configuration&gt;

&lt;property&gt;

&lt;name&gt;mapred.job.tracker&lt;/name&gt;

&lt;value&gt;localhost:9010&lt;/value&gt;

&lt;/property&gt;

&lt;/configuration&gt;

### hdfs-site.xml

MacBook-Pro:hadoop neo$ vim /usr/local/opt/hadoop/libexec/etc/hadoop/hdfs-site.xml

&lt;?xml version="1.0" encoding="UTF-8"?&gt;

&lt;?xml-stylesheet type="text/xsl" href="configuration.xsl"?&gt;

&lt;configuration&gt;

&lt;property&gt;

&lt;name&gt;dfs.replication&lt;/name&gt;

&lt;value&gt;1&lt;/value&gt;

&lt;/property&gt;

&lt;/configuration&gt;

## Format

hadoop namenode -format

## Start

$ ./start-all.sh



**通过访问以下网址查看hadoop是否启动成功**

Resource Manager:

[http://localhost:50070](http://localhost:50070/)

JobTracker:

[ http://localhost:8088](http://localhost:8088/)

Specific Node Information:

[ http://localhost:8042](http://localhost:8042/)

