package tests.plugin.math.algebra 
{
	import asunit.framework.TestCase;
	import io.plugin.math.algebra.APoint;
	import io.plugin.math.algebra.AVector;
	
	/**
	 * ...
	 * @author Gary Paluk
	 */
	public class APointTestCase extends TestCase 
	{
		
		public function APointTestCase( testMethod: String ) 
		{
			super( testMethod );
		}
		
		//{ Region clone
		public function clone(): void
		{
			var p0: APoint = new APoint( 1, 2, 3 );
			var p1: APoint = p0.clone();
			assertEquals( p1.x, 1 );
			assertEquals( p1.y, 2 );
			assertEquals( p1.z, 3 );
			assertEquals( p1.w, 1 );
		}
		//}
		
		//{ Region toTuple
		public function toTuple(): void
		{
			var p0: APoint = new APoint( 5, 10, 15 );
			var a0: Array = p0.toTuple();
			
			assertEquals( a0.length, 4 );
			assertEquals( a0[ 0 ], 5 );
			assertEquals( a0[ 1 ], 10 );
			assertEquals( a0[ 2 ], 15 );
			assertEquals( a0[ 3 ], 1 );
		}
		//}
		
		//{ Region toVector
		public function toVector(): void
		{
			var p0: APoint = new APoint( 1, 2, 3 );
			var v0: Vector.<Number> = p0.toVector();
			
			assertEquals( v0[0], 1 );
			assertEquals( v0[1], 2 );
			assertEquals( v0[2], 3 );
			assertEquals( v0[3], 1 );
		}
		//}
		
		//{ Region set
		public function set(): void
		{
			var p0: APoint = new APoint( 0, 2, 4 );
			p0.set( 10, 20, 30 );
			
			assertEquals( p0.x, 10 );
			assertEquals( p0.y, 20 );
			assertEquals( p0.z, 30 );
			assertEquals( p0.w, 1 );
		}
		//}
		
		//{ Region add
		public function add() : void
		{
			var p0: APoint = new APoint( 5, 10, 15);
			var p1: APoint = new APoint( 1, 2, 3);
			
			var p2: APoint = p0.add( p1 );
			
			assertEquals( p2.x, 6 );
			assertEquals( p2.y, 12 );
			assertEquals( p2.z, 18 );
			assertEquals( p2.w, 1 );
			
			p0 = APoint.ONE;
			p1 = APoint.ORIGIN;
			p2 = p0.add( p1 );
			
			assertEquals( p2.x, 1 );
			assertEquals( p2.y, 1 );
			assertEquals( p2.z, 1 );
			assertEquals( p2.w, 1 );
		}
		//}
		
		//{ Region addEq
		public function addEq(): void
		{
			var p0: APoint = new APoint( 5, 10, 15 );
			var p1: APoint = new APoint( 1, 2, 3 );
			p0.addEq( p1 );
			
			assertEquals( p0.x, 6 );
			assertEquals( p0.y, 12 );
			assertEquals( p0.z, 18 );
			assertEquals( p0.w, 1 );
		}
		
		//}
		
		//{ Region addAVector
		public function addAVector(): void
		{
			var p0: APoint = new APoint( 1, 2, 3 );
			var v0: AVector = new AVector( 1, 2, 3 );
			var p1: APoint = p0.addAVector( v0 );
			
			assertEquals( p1.x, 2 );
			assertEquals( p1.y, 4 );
			assertEquals( p1.z, 6 );
			assertEquals( p1.w, 1 );
		}
		
		//}
		
		//{ Region addAVectorEq
		public function addAVectorEq(): void
		{
			var p0: APoint = new APoint( 0, 2, 4 );
			var p1: AVector = new AVector( 2, 5, 10 );
			p0.addAVectorEq( p1 );
			
			assertEquals( p0.x, 2 );
			assertEquals( p0.y, 7 );
			assertEquals( p0.z, 14 );
			assertEquals( p0.w, 1 );
		}
		
		//}
		
		//{ Region subtract
		public function subtract(): void
		{
			var p0: APoint = new APoint( 10, 8, 6 );
			var p1: APoint = new APoint( 1, 2, 3 );
			var v0: AVector = p0.subtract( p1 );
			
			assertEquals( v0.x, 9 );
			assertEquals( v0.y, 6 );
			assertEquals( v0.z, 3 );
			assertEquals( v0.w, 0 );
		}
		//}
		
		//{ Region subtractEq
		public function subtractEq(): void
		{
			var p0: APoint = new APoint( 5, 10, 15 );
			var p1: APoint = new APoint( 1, 2, 3 );
			p0.subtractEq( p1 );
			
			assertEquals( p0.x, 4 );
			assertEquals( p0.y, 8 );
			assertEquals( p0.z, 12 );
			assertEquals( p0.w, 1 );
		}
		//}
		
		//{ Region subtractAVector
		public function subtractAVector(): void
		{
			var p0: APoint = new APoint( 10, 8, 6 );
			var v0: AVector = new AVector( 5, 4, 3 );
			var p1: APoint = p0.subtractAVector( v0 );
			
			assertEquals( p1.x, 5 );
			assertEquals( p1.y, 4 );
			assertEquals( p1.z, 3 );
			assertEquals( p1.w, 1 );
		}
		//}
		
		//{ Region subtractAVectorEq
		public function subtractAVectorEq(): void
		{
			var p0: APoint = new APoint( 10, 20, 30 );
			var v0: AVector = new AVector( 2, 4, 6 );
			
			p0.subtractAVectorEq( v0 );
			assertEquals( p0.x, 8 );
			assertEquals( p0.y, 16 );
			assertEquals( p0.z, 24 );
			assertEquals( p0.w, 1 );
			
		}
		//}
		
		//{ Region scale
		public function scale(): void
		{
			var p0: APoint = new APoint( 5, 10, 20 );
			var p1: APoint = p0.scale( 5 );
			
			assertEquals( p1.x, 25 );
			assertEquals( p1.y, 50 );
			assertEquals( p1.z, 100 );
			assertEquals( p1.w, 1 );
			
			p0 = new APoint( 10, 20, 30 );
			p1 = p0.scale( 0.5 );
			
			assertEquals( p1.x, 5 );
			assertEquals( p1.y, 10 );
			assertEquals( p1.z, 15 );
			assertEquals( p1.w, 1 );
			
			p0 = new APoint( 10, 20, 30 );
			p1 = p0.scale( 0 );
			
			assertEquals( p1.x, 0 );
			assertEquals( p1.y, 0 );
			assertEquals( p1.z, 0 );
			assertEquals( p1.w, 1 );
		}
		//}
		
		//{ Region scaleEq
		public function scaleEq(): void
		{
			var p0: APoint = new APoint( 5, 10, 15 );
			
			p0.scaleEq( 4 );
			assertEquals( p0.x, 20 );
			assertEquals( p0.y, 40 );
			assertEquals( p0.z, 60 );
			assertEquals( p0.w, 1 );
			
			p0.scaleEq( 0.25 );
			assertEquals( p0.x, 5 );
			assertEquals( p0.y, 10 );
			assertEquals( p0.z, 15 );
			assertEquals( p0.w, 1 );
			
			p0.scaleEq( 0 );
			assertEquals( p0.x, 0 );
			assertEquals( p0.y, 0 );
			assertEquals( p0.z, 0 );
			assertEquals( p0.w, 1 );
		}
		//}
		
		//{ Region divide
		public function divide(): void
		{
			var p0: APoint = new APoint( 2, 4, 6 );
			var p1: APoint = p0.divide( 2 );
			
			assertEquals( p1.x, 1 );
			assertEquals( p1.y, 2 );
			assertEquals( p1.z, 3 );
			assertEquals( p1.w, 1 );
			
			p0 = new APoint( 2, 4, 6 );
			p1 = p0.divide( 0.5 );
			
			assertEquals( p1.x, 4 );
			assertEquals( p1.y, 8 );
			assertEquals( p1.z, 12 );
			assertEquals( p1.w, 1 );
			
			p0 = new APoint( 2, 4, 6 );
			p1 = p0.divide( 0 );
			
			assertEquals( p1.x, Number.MAX_VALUE );
			assertEquals( p1.y, Number.MAX_VALUE );
			assertEquals( p1.z, Number.MAX_VALUE );
			assertEquals( p1.w, 1 );
		}
		//}
		
		//{ Region divideEq
		public function divideEq(): void
		{
			var p0: APoint = new APoint( 2, 4, 6 );
			p0.divideEq( 2 );
			
			assertEquals( p0.x, 1 );
			assertEquals( p0.y, 2 );
			assertEquals( p0.z, 3 );
			assertEquals( p0.w, 1 );
			
			p0 = new APoint( 2, 4, 6 );
			p0.divideEq( 0.5 );
			
			assertEquals( p0.x, 4 );
			assertEquals( p0.y, 8 );
			assertEquals( p0.z, 12 );
			assertEquals( p0.w, 1 );
			
			p0 = new APoint( 2, 4, 6 );
			p0.divideEq( 0 );
			
			assertEquals( p0.x, Number.MAX_VALUE );
			assertEquals( p0.y, Number.MAX_VALUE );
			assertEquals( p0.z, Number.MAX_VALUE );
			assertEquals( p0.w, 1 );
		}
		//}
		
		//{ Region negate
		public function negate(): void
		{
			var p0: APoint = new APoint( 2, 4, 6 );
			var p1: APoint = p0.negate();
			
			assertEquals( p1.x, -2 );
			assertEquals( p1.y, -4 );
			assertEquals( p1.z, -6 );
			assertEquals( p1.w, 1 );
			
			p0 = new APoint( -2, 0, -6 );
			p1 = p0.negate();
			
			assertEquals( p1.x, 2 );
			assertEquals( p1.y, 0 );
			assertEquals( p1.z, 6 );
			assertEquals( p1.w, 1 );
		}
		//}
		
		//{ Region negateEq
		public function negateEq(): void
		{
			var p0: APoint = new APoint( 2, 4, 6 );
			p0.negateEq();
			
			assertEquals( p0.x, -2 );
			assertEquals( p0.y, -4 );
			assertEquals( p0.z, -6 );
			assertEquals( p0.w, 1 );
			
			p0.negateEq();
			assertEquals( p0.x, 2 );
			assertEquals( p0.y, 4 );
			assertEquals( p0.z, 6 );
			assertEquals( p0.w, 1 );
		}
		//}
		
		//{ Region dotProduct
		public function dotProduct(): void
		{
			var a0: APoint = new APoint( 1, 2, 3 );
			var v0: AVector = new AVector( 1, 2, 3 );
			var angle: Number = a0.dotProduct( v0 );
			
			assertEquals( angle, 14 );
			
			a0 = new APoint( 1, 2, 3 );
			v0 = new AVector( 2, 5, 7 );
			angle = a0.dotProduct( v0 );
			
			assertEquals( angle, 33 );
			
			a0 = new APoint( 1, 2, 3 );
			v0 = new AVector( 2, -5, -7 );
			angle = a0.dotProduct( v0 );
			
			assertEquals( angle, -29 );
		}
		
		//}
		
		//{ Region equals
		public function equals(): void
		{
			var p0: APoint = new APoint( 0, 1, 2 );
			var p1: APoint = new APoint( 10, 20, 30 );
			var p2: APoint = new APoint( 10, 20, 30 );
			
			assertFalse( p0.equals( p1 ) );
			assertTrue( p1.equals( p2 ) );
			assertFalse( p1.equals( null ) );
			
		}
		//}
		
	}
}