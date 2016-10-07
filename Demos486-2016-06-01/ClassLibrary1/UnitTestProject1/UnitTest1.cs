using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using ClassLibrary1;

namespace UnitTestProject1
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestMethod1()
        {
            var target = new CalculatorEngine(); // ARRANGE
            int a = 2;
            int b = 2;
            int expected = 4;
            int actual;
            actual = target.AddNumbers(a, b);  // ACT
            Assert.AreEqual(expected, actual); // ASSERT
        }
        [TestMethod]
        public void TestMethod2()
        {
            var target = new CalculatorEngine(); // ARRANGE
            int a = 2;
            int b = 3;
            int expected = 5;
            int actual;
            actual = target.AddNumbers(a, b);  // ACT
            Assert.AreEqual(expected, actual); // ASSERT
        }
    }
}
