 # -*- coding: utf-8 -*-
from flask import Flask, render_template
import random
app = Flask(__name__)

all_list = []
def load_list( path ):
	global all_list
	with open( path ) as f:
		for l in f.readlines():
			if l != "":
				all_list += [ l ]

@app.route( "/list", methods=['GET'] )
def form():
	#global all_list
	title = "TitleTest"
	message = "MESSAGE"
	data = all_list[ random.randint( 0, len( all_list ) -1 ) ]
	return render_template( "index.html",
                           message = message, title = title, data = data )

if __name__ == "__main__" :
	load_list( "data.txt" )
	app.run( host = '0.0.0.0', port = 8089)


