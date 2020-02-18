using System;

namespace ShapeArea
{
    public abstract class Shape
    {
        protected double[] _sides;

        public double[] Sides => _sides;

        public Shape(params double[] sideSizes)
        {
            _sides = sideSizes;
        }

        public abstract double GetArea();
    }

    public class Square : Shape
    {
        public Square(params double[] sideSizes) : base(sideSizes) { }

        public override double GetArea()
        {
            return Sides[0] * Sides[0];
        }
    }

    public class Rectangle : Shape
    {
        public Rectangle(params double[] sideSizes) : base(sideSizes) { }

        public override double GetArea()
        {
            return Sides[0] * Sides[1];
        }
    }

    public class Triangle : Shape
    {
        public Triangle(params double[] sideSizes) : base(sideSizes) { }

        public override double GetArea()
        {
            var pp = (Sides[0] + Sides[1] + Sides[2]) / 2;
            return Math.Sqrt(pp * (pp - Sides[0]) * (pp - Sides[1]) * (pp - Sides[2]));
        }

        public bool IsRight()
        {
            return (Sides[0] * Sides[0] + Sides[1] * Sides[1] == Sides[2] * Sides[2]) ||
                   (Sides[0] * Sides[0] + Sides[2] * Sides[2] == Sides[1] * Sides[1]) ||
                   (Sides[2] * Sides[2] + Sides[1] * Sides[1] == Sides[0] * Sides[0]);

        }
    }

    public class Circle : Shape
    {
        public Circle(params double[] sideSizes) : base(sideSizes) { }

        public override double GetArea()
        {
            return Math.PI * Math.Pow(Sides[0], 2) / 4;
        }
    }

    public class Ellipse : Shape
    {
        public Ellipse(params double[] sideSizes) : base(sideSizes) { }

        public override double GetArea()
        {
            return Math.PI * Sides[0] * Sides[1] / 4;
        }
    }
}
