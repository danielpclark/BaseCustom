BaseCustom
by Daniel P. Clark

Inspired by:
* base62 by "JT Zemp" and contributors "Saadiq Rodgers-King", "Derrick Camerino"

Version 0.1.3 created from assistance and advice by my father Robert Clark.

Description
* Define any base conversion with any identifier for each value.

<code>

    require 'basecustom'
    
    base2 = BaseCustom.new('01')
    base2.base('00001')
    => 1
    base2.base('100110101')
    => 309
    base2.base(340)
    => "101010100"
    base2.base(0xF45)
    => "111101000101"
    
    baseABC = BaseCustom.new('ABC')
    baseABC.base('ABC')
    => 5
    baseABC.base(123)
    => "BBBCA"
</code>

Usage Video Below:

[![ScreenShot](http://img.youtube.com/vi/b7TdvicxIrs/0.jpg)](http://www.youtube.com/embed/b7TdvicxIrs)
