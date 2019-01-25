# Liu70FPCategory_链式编程套餐
从Masonry取灵感，针对OC一些基本对象的基本方法，进行链式编程改造，得出来的一套东西。#import "Liu70FPCategory.h" 即可使用。

打个比方，NSMutableAttributedString，以往要搞这个很烦人的
现在：
```
string.appendAttributedStringFast(nameString, nil, nil).appendAttributedStringFast(amountString, nil, AppOrangeColor).appendAttributedStringFast(@"更换优惠券", nil, AppGreenText);
```
轻松搞定，
三个参数分别是 字符串、字号、颜色 ，传nil则不对该属性进行设置