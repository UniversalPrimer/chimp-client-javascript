#!/usr/bin/env ruby

require 'uri'
require 'net/http'
require 'rubygems'
require 'json'


host = 'ape.gui.grafiki.org'
port = 6969
path = '/0/?'

cmd = [{'cmd' => 'inlinepush', 
        'params' => { 
           'password' => 'c0lgate', 
           'raw' => 'data', 
           'channel' => 'foo', 
           'data' => { 
               'msg' => 'It woooorks!'
           } 
       } 
}]

path += URI.escape(cmd.to_json)
response = Net::HTTP.get(host, path, port);
puts response