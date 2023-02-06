using System;
using NUnit.Framework;

namespace KataTests;

[TestFixture]
public class CaseTest
{
    [Test]
    public void Test()
    {
        Assert.AreEqual("theStealthWarrior", Case.ToCamelCase("the_stealth_warrior"), "Kata.ToCamelCase('the_stealth_warrior') did not return correct value");
        Assert.AreEqual("TheStealthWarrior", Case.ToCamelCase("The-Stealth-Warrior"), "Kata.ToCamelCase('The-Stealth-Warrior') did not return correct value");
    }
}