// Codewars

/*===================================================================================================
    Convert a string to a new string where each character in the new string is "(" if that character
    appears only once in the original string, or ")" if that character appears more than once in the
    original string. Ignore capitalization when determining if a character is a duplicate.
===================================================================================================*/

namespace Katas.KataClasses;

public class DuplicateEncoder
{
    public static string DuplicateEncode(string word)
    {
        var dups = word.ToLower().GroupBy(c => c).Where(g => g.Count() > 1).Select(x => x.Key);
        var coded = "";
        foreach (var letter in word.ToLower())
        {
            if (dups.Any(l => l == letter))
                coded += ")";
            else
                coded += "(";
        }

        return coded;

        // return string.Concat(word.ToLower().Select(x => word.Count(w => w == x) > 1 ? ')' : '('));
    }
}
