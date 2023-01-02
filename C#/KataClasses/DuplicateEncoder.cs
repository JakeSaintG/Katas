// Codewars

namespace Katas.KataClasses;

internal class DuplicateEncoder
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
