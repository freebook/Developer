# Logging

java.util.logging

```java
import java.util.logging.*;
public class Main {
	public static void main(String[] args) {
		Logger log = Logger.getLogger("test"); 
        log.setLevel(Level.INFO); 
        log.info("--------------------------");
        log.info("Test");
        log.info("--------------------------");
        
	}
}
```
##　ＸＭＬ

```java
import java.io.IOException;
import java.util.logging.*;

public class Main {
	public static void main(String[] args) {

		try {
			Logger log = Logger.getLogger("test");
			FileHandler fileHandler = new FileHandler("test.%g.log");
			fileHandler.setLevel(Level.INFO);
			log.addHandler(fileHandler);
			
			log.setLevel(Level.INFO);
			log.info("One");
			log.info("Two");
			log.info("Three");
			
		} catch (SecurityException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
```
### 输出结果

```xml
<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<!DOCTYPE log SYSTEM "logger.dtd">
<log>
<record>
  <date>2016-04-19T15:57:19</date>
  <millis>1461052639360</millis>
  <sequence>0</sequence>
  <logger>test</logger>
  <level>INFO</level>
  <class>Main</class>
  <method>main</method>
  <thread>1</thread>
  <message>One</message>
</record>
<record>
  <date>2016-04-19T15:57:19</date>
  <millis>1461052639394</millis>
  <sequence>1</sequence>
  <logger>test</logger>
  <level>INFO</level>
  <class>Main</class>
  <method>main</method>
  <thread>1</thread>
  <message>Two</message>
</record>
<record>
  <date>2016-04-19T15:57:19</date>
  <millis>1461052639395</millis>
  <sequence>2</sequence>
  <logger>test</logger>
  <level>INFO</level>
  <class>Main</class>
  <method>main</method>
  <thread>1</thread>
  <message>Three</message>
</record>
</log>
```

## Formatter

```java
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.*;

class LogFormatter extends Formatter {
	@Override
	public String format(LogRecord record) {
		return String.format("%s %s\t%s\n", new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS").format(new Date()) , record.getLevel(), record.getMessage());
	}
}

public class Main {
	public static void main(String[] args) {

		try {
			Logger log = Logger.getLogger("test");
			FileHandler fileHandler = new FileHandler("test.%g.log");
			fileHandler.setLevel(Level.INFO);
			log.addHandler(fileHandler);
			fileHandler.setFormatter(new LogFormatter());
			log.setLevel(Level.INFO);
			log.info("One");
			log.info("Two");
			log.info("Three");

		} catch (SecurityException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
```
### 输出结果

```
2016-04-19 16:05:53.324 INFO	One
2016-04-19 16:05:53.352 INFO	Two
2016-04-19 16:05:53.353 INFO	Three
```