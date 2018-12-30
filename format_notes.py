import json
from datetime import datetime

with open("/home/alex/conky_config/task.json", "r") as f:
    tasks = json.load(f)

header = ['ID', '${alignc 2000}Project', '${alignr 0}Description'] 
print("\t".join(header))

for task in tasks:
    if task['urgency']>=10:
        task['urgency'] = 10
    if 'project' in task.keys():
        project = task['project']
    else:
        project = 'None'
    if 'start' in task.keys():
        print("${color"+str(task['urgency'])+"}"+"\t ".join([str(task['id'])+"*", "${alignc 2000}"+project, "${alignr 0}"+task['description']]))
    else:
        print("${color"+str(task['urgency'])+"}"+"\t ".join([str(task['id']), "${alignc 2000}"+project, "${alignr 0}"+task['description']]))
