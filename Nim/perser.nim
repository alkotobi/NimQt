import  streams, parsexml, strformat,stack,strutils,os
var filename = "/Users/merhab/dev/python/mnstock/ui/users/form/ui_user_form.ui"
var s = newFileStream(filename, fmRead)
var x: XmlParser
var import_str=""
var main_class_str=""
var main_form_str=""
var is_open: bool = false
var setup_ui_str = ""
var opened_element_names=newStack[string]()

proc compile_property*(x:var XmlParser,parent_element:string):string=
    var element_name=""
    var them_name=""
    var resource_path=""
    var resource_name=""
    while x.kind != xmlElementOpen:
        x.next()
    if x.elementName == "rect":
      var elems = newSeq[string]()
      while len(elems)<4:
        x.next()
        if x.kind == xmlCharData:
          elems.add(x.elementName)
      return &"QRect({elems[0]},{elems[1]},{elems[2]},{elems[3]})"
    if x.elementName == "string":
      x.next()
      if x.kind == xmlCharData:
        return &"\"{x.element_name}\""
    if x.elementName == "number" or x.elementName == "enum" or x.elementName == "bool":
      x.next()
      if x.kind == xmlCharData:
        return x.element_name
    if x.elementName == "size":
      var elems = newSeq[string]()
      while len(elems)<2:
        x.next()
        if x.kind == xmlCharData:
          elems.add(x.elementName)
      return &"QSize({elems[0]},{elems[1]})"
    if x.elementName == "iconset":
      x.next()
      if x.kind == xmlAttribute:
        if x.attrKey == "them":
          them_name = x.attrValue
          x.next
        if x.attrKey == "resource":
          resource_path = x.attrValue
      while x.kind != xmlCharData:
        x.next
      resource_name = x.elementName
      var path = resource_path.splitPath().head
      var file = resource_name.splitPath().tail
      path = path & DirSep & file
      return &"QIcon(\"{path}\")"
      
          
          


    
      

        

proc compile_element*(x:var XmlParser,parent_element:string): string =
    var str = ""
    var class_name=""
    var element_name=""
    while x.kind != xmlElementOpen:
        x.next()
        
    while  x.kind != xmlElementEnd:
        if x.elementName == "property":
          x.next()
          if x.kind == xmlAttribute:
            if x.attrKey == "name":
              element_name = x.attrValue
              str = str & &" {parent_element}.set" & element_name.capitalizeAscii & "(" & compile_property(x,element_name) & ")"
        if x.elementName == "widget":
          x.next()
          if x.kind == xmlAttribute:
            if x.attrKey == "class":
              class_name = x.attrValue
          x.next()
          if x.kind == xmlAttribute:
            if x.attrKey == "name":
              element_name = x.attrValue
          str = "var" & element_name & ":" & class_name & "= new" & class_name & &"({parent_element})\n"
          str = str & compile_element(x,element_name) 


        if x.elementName == "action":
          var action_name=""
          var instruction_str=""  
          x.next()
          if x.kind == xmlAttribute:
            if x.attrKey == "name":
                action_name = x.attrValue
            if action_name != "":
              instruction_str = instruction_str & &"{action_name} = newQAction({parent_widget_str}\n)"    
                
            
        echo ""
    return str
    
open(x, s, filename)
while true:
  x.next()
  if x.kind == xmlEof: break
#   if x.kind == xmlAttribute:
#     echo "atrr_key: ", x.attrKey ," attr_val: ",x.attrValue
#   echo "kind: ",x.kind,"/ elem_name: ",x.elementName
  case x.kind
  of xmlElementOpen:
    is_open=true
    opened_element_names.push(x.elementName)
    if main_class_str == "" and x.elementName == "class":
        x.next()
        if x.kind == xmlCharData: main_class_str = &"type\n  Ui_{x.elementName} = ref object\n" 
    if x.elementName == "action":
        x.next()
        if x.kind == xmlAttribute:
            var str = &"    {x.attrValue} : Qaction\n"
            main_class_str = main_class_str & str 

    if x.elementName == "spacer":
        x.next()
        if x.kind == xmlAttribute:
            var str = &"    {x.attrValue} : QSpacerItem\n"
            main_class_str = main_class_str & str 
    if x.elementName == "layout" or x.elementName == "widget":
        var class_name:string = ""
        var name:string = ""
        x.next()
        if x.kind == xmlAttribute:
            class_name = x.attrValue
        x.next()
        if x.kind == xmlAttribute:
            name = x.attrValue
        var str = &"    {name} : {class_name}\n"
        main_class_str = main_class_str & str 
    echo "main_class_str= ",main_class_str

        
    # if x.kind == xmlAttribute:
    #       echo "atrr key ", x.attrKey ," attr val: ",x.attrValue
    # echo "kind: ",x.kind,"/ elem name : ",x.elementName
    # if x.kind == xmlEntity: echo x.entityName
#   of xmlAttribute , xmlCharData:
#     echo "atrr key ", x.attrKey ," attr val: ",x.attrValue
  of xmlElementEnd:
    is_open = false 
    opened_element_names.pop()
#   of xmlElementOpen:
#     echo""   
  of xmlEof:
    break 
  else: discard
x.close