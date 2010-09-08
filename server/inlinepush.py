#!/usr/bin/env python

import urllib2
import json
 
server = 'http://127.0.0.1:6969/0/?'
cmd = [{'cmd': 'inlinepush',
        'params': {
           'password': 'c0lgate',
           'raw': 'data',
           'channel': 'foo',
           'data': {
               'msg': 'It woooorks!'
           }
       }
}]
url = server + urllib2.quote(json.dumps(cmd))
response = urllib2.urlopen(url)
print(response.html())



