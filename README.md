# BaseCustom
by Daniel P. Clark

Inspired by:
* base62 by "JT Zemp" and contributors "Saadiq Rodgers-King", "Derrick Camerino"

**Description**
* Define any base conversion with any identifier for each value.


<code>require 'basecustom'
    
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
    => "BBBCA"</code>


# Usage Video

[![ScreenShot](http://img.youtube.com/vi/b7TdvicxIrs/0.jpg)](http://www.youtube.com/embed/b7TdvicxIrs)

# Version History
Version 0.1.7
* added feature .length() and .all() functions.

Version 0.1.6
* Fixed 0 as 0 bug.

Version 0.1.5
* Added jmchambers' debug from jtzemp/base62 to avoid infinite loop in Rails 3.0.7

Version 0.1.4
* My father suggested delimiter splitting on String initialization made more sense.
* Test-Unit assertions fixed/updated.

Version 0.1.3
* Fixed multicharacter numbering units
* Added delimiter for multicharacter numbering units
* Safe base type creation.  Each situation checked for and proper error messages.

Version 0.1.2
* Added unique to string init declaration
* Added unique to array as well as checking that all array elements are strings

Version 0.1.1
* Flatten array's on input initialization

Version 0.1.0
* Complete Release
