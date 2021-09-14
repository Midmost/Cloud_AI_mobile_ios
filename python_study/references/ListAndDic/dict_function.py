task_dict={"ctd":"create","utd":"update","rtd":"remove","dtd":"done","vtd":"view"}
task_dict.get("ctd")

task_dict.pop("dtd")
task_dict

task_dict.popitem()
task_dict

task_dict.update({"ftd":"finish","vtd":"view"})
task_dict

job_dict = task_dict.copy()
job_dict

job_dict.setdefault("vtd","show")
job_dict
job_dict.setdefault("std","show")
job_dict

job_dict.clear()
job_dict

dict.fromkeys(["cgrp","ugrp","rgrp"])

dict.fromkeys(["wgrp","mgrp","dgrp"],"TBD")

task_dict.keys()
task_dict.values()
task_dict.items()