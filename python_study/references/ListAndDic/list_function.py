page_list = ["Main","Total","Incomplete","Complete"]
page_list.append("ManageToDo")
page_list

page_list.insert(2,"Weekly")
page_list

page_list.extend(["ManageCategory","ViewToDo"])
page_list

menu_list = page_list.copy()
menu_list

menu_list.remove("Total")
menu_list

menu_list.pop(2)
menu_list
menu_list.pop()
menu_list

menu_list.clear()
menu_list

page_list.count("Main")
len(page_list)

page_list.index("Complete")
page_list

page_list.reverse()
page_list

page_list.sort()
page_list
page_list.sort(reverse=True)
page_list

print(','.join(page_list))
print("\n".join(page_list))
print("/".join(page_list))

page_list_str = "#".join(page_list)
page_list_str

page_split = page_list_str.split("#")
page_split
