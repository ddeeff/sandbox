#!/usr/bin/env python
import os
from jinja2 import Environment, FileSystemLoader
from slimish_jinja import SlimishExtension

if __name__ == '__main__':
	env = Environment(loader=FileSystemLoader('./'), extensions=[SlimishExtension])
	env.slim_debug = True
	with open( './test.slim' ) as template:
		jinja_tmpl = env.get_template('test.slim')
		users = [{'name': 'foo', 'last_name': 'bar'},
				{'name': 'bar', 'middle_name': 'baz'},
				{'name': 'baz'}]
		td = [[1,10],[11,20]]
		print jinja_tmpl.render( table_data=td, torf=True)


