# Java

```
neo@MacBook-Pro-Neo ~/w/D/window (master)> /usr/libexec/java_home
/usr/local/Cellar/openjdk/18.0.1.1/libexec/openjdk.jdk/Contents/Home

neo@MacBook-Pro-Neo ~/w/D/window (master)> java -version
openjdk version "18.0.1.1" 2022-04-22
OpenJDK Runtime Environment Homebrew (build 18.0.1.1+0)
OpenJDK 64-Bit Server VM Homebrew (build 18.0.1.1+0, mixed mode, sharing)


export JAVA_HOME=`/usr/libexec/java_home -v 1.6`;
或者
export JAVA_HOME=`/usr/libexec/java_home -v 1.7`;
或者
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`;

```

## Ant

`MacBook-Pro:~ neo$ brew install ant@1.9`

## Maven

$ brew install maven

vim /usr/local/Cellar/maven/3.8.6/libexec/conf/settings.xml
 
 
