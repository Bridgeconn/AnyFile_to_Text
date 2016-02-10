#!/usr/bin/env ruby

require 'yomu'
flag = false

## Please put all file under folder which you need to convert
Dir.glob("**/*.*") do |doc_file|

	flag = true
	output_name = "#{File.basename(doc_file, '.*')}.txt"
	output = File.open(output_name, 'w:utf-8')
	if flag
    data = File.read "#{doc_file}"
    text = Yomu.read :text, data
		output << text
	end
end
