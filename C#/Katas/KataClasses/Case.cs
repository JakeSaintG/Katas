// Codewars

/*===================================================================================================
Complete the method/function so that it converts dash/underscore delimited words into camel casing. 
The first word within the output should be capitalized only if the original word was capitalized (known 
as Upper Camel Case, also often referred to as Pascal case). The next words should be always capitalized.
===================================================================================================*/

using System.Globalization;

namespace Katas.KataClasses;

public class Case
{
    public static string ToCamelCase(string str)
    {
        if (str == "")
            return str;

        char c = str.ToCharArray()[0];
        TextInfo textInfo = new CultureInfo("en-US", false).TextInfo;

        str = textInfo.ToTitleCase(str.Replace('-', ' ').Replace('_', ' ').ToLower()).Replace(" ", "");
        return c + str[1..];
    }
}
/*
    Notes:

    I should practice regex more. It didn't cross my mind to try it until I saw this solution after submission:
        return Regex.Replace(str, @"[_-](\w)", m => m.Groups[1].Value.ToUpper())
 */
