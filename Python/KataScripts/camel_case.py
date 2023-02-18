# Codewars

#=================================================================
#Complete the method/function so that it converts dash/underscore 
#delimited words into camel casing. The first word within the output 
#should be capitalized only if the original word was capitalized
#(known as Upper Camel Case, also often referred to as Pascal case).
#The next words should be always capitalized.
#==================================================================

def to_camel_case(text):
    if text == "":
        return ""
    
    c = list(text)[0]
    text = list(text.lower().title().replace('-', '').replace('_', ''))
    text.pop(0)
    return c + "".join(text)


print(to_camel_case("the_steAlth_warrior"))

#Notes:
