using Katas.KataClasses;

Console.WriteLine(CardMask.Maskify("4556364607935616"));

Console.WriteLine(DuplicateEncoder.DuplicateEncode("din"));
Console.WriteLine(DuplicateEncoder.DuplicateEncode("recede"));
Console.WriteLine(DuplicateEncoder.DuplicateEncode("Success"));

// Kata didn't want it to be static... Who am I to say no?
DigitalRoot dr = new DigitalRoot();
Console.WriteLine(dr.ReturnDigitalRoot(16));
Console.WriteLine(dr.ReturnDigitalRoot(132189));
Console.WriteLine(dr.ReturnDigitalRoot(493193));