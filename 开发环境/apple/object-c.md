# Object C

接口返回字符串或者布尔型

```
    NSString *string = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
    NSLog\(@"responseObject string %@",string\);

    NSLog\(@"请求成功"\);
    
    NSString *string = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
    NSLog(@"str = %@",str);
    

```

直接反馈json处理方法

```
NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableLeaves error:nil];
```

```

```









