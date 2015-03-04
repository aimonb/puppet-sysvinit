sysvinit
--------

This module was created to manage services with chkconfig outside of the normal service definition.
THis is especially useful when disabling services from auto starting so you can managfe them in other ways.


Example Usage
-------------

The below example disables the 'crond' service for run levels 0-6.

```ruby
 sysvinit {'crond':
       ensure    =>  present,
       on_off    =>  'off',
       runlevels =>  '0123456',
 }
```

License
-------
The MIT License (MIT)

Copyright (c) 2013 Aimon Bustardo

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

Contact
-------


Support
-------

Please log tickets and issues at our [Projects site](https://github.com/aimonb/puppet-sysvinit)
