using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;

using ShapeArea;

namespace ShapeAreaTest
{
    [TestClass]
    public class ShapeAreaTests
    {
        [TestMethod]
        public void CircleArea()
        {
            double radius = 12;
            double expected = Math.PI * Math.Pow(radius, 2);

            Shape shape = new Circle(radius * 2);

            Assert.AreEqual(shape.GetArea(), expected);
        }

        [TestMethod]
        public void SquareArea()
        {
            double side = 18.2;
            double expected = Math.Pow(side, 2);

            Shape shape = new Square(side);

            Assert.AreEqual(shape.GetArea(), expected);
        }

        [TestMethod]
        public void TriangleIsRight()
        {
            double a = 3;
            double b = 4;
            double c = 5;

            Triangle shape = new Triangle(a, b, c);

            Assert.AreEqual(shape.IsRight(), true);
        }
    }
}
