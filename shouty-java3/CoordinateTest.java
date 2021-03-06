import static org.junit.Assert.assertEquals;
import org.junit.Test;

public class CoordinateTest {
  @Test
  public void itCalculatesTheDistanceFromItself() {
      Coordinate a = new Coordinate(0, 0);
      assertEquals(0, a.distanceFrom(a));
  }

  @Test
  public void itCalculatesTheDistanceFromAnotherCoordinateAlongXAxis() {
      Coordinate a = new Coordinate(0, 0);
      Coordinate b = new Coordinate(600, 0);
      assertEquals(600, a.distanceFrom(b));
  }

  // @Test
  // public void itCalculatesTheDistanceFromAnotherCoordinate() {
  //     Coordinate a = new Coordinate(0, 0);
  //     Coordinate b = new Coordinate(300, 400);
  //     assertEquals(500, a.distanceFrom(b));
  // }

  // Use this code to implement Pythagoras' theorem in Coordinate.java:
  //
  // return (int)Math.hypot(x - other.x, y - other.y);
}
