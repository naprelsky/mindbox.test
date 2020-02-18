
namespace ShapeArea
{
    public class AreaCalculator
    {

        public double GetCircleArea(double radius)
        {
            Shape circle = new Circle(radius * 2);
            return circle.GetArea();
        }

        public double GetTriangleArea(double a, double b, double c)
        {
            Shape triangle = new Triangle(a ,b, c);
            return triangle.GetArea();
        }
    }
}
