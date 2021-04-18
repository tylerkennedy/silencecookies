import json

jsonObj = [] # List of rules

# Read in the css classes to block in the rules as json
with open("rules.txt") as file:
	# Read each line
	for line in file:
		# Skip lines that start with ~ from the data set
		if(line[0] == '~'):
			continue
		line = line.strip() # Strip whitespace
		# Format of each json rule
		entry = {
			"action": {
            	"type": "css-display-none",
            	"selector": line
        	},
        	"trigger": {
        	"url-filter": ".*"
        	}
		}
		jsonObj.append(entry) # Add entry to the list

jsonStr = json.dumps(jsonObj) # Stringify the json

# Write json rules to file
with open("rules.json", "w") as file:
	file.write(jsonStr)