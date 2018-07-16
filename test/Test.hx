import geom.Vector2d;

class Test extends haxe.unit.TestCase {
	public static function main() {
		var r = new haxe.unit.TestRunner();
		r.add(new Test());
		r.run();
	}
	
	public function testAdd() {
		var p1:Vector2d = new Vector2d(10, 20);
		var p2:Vector2d = {x: 10.0, y: 30.0};

		// p3 = {x: 20.0, y: 50.0}
		var p3 = p1 + p2;  // same as `var p3 = p1.add(p2);`, same as `var p3 = {x: p1.x + p2.x, y:p1.y + p2.y}`
		 
		trace(p3);
		assertTrue(p3.x == 20 && p3.y == 50);
		
		// x*x + y*y
		trace(p3.length);
		assertTrue(p3.length == 2900);
		
		// same as Math.sqrt(p3.length)
		trace(p3.magnitude); // 53.85164807134504
		assertTrue(Math.round(p3.magnitude) == 54);
	}
}