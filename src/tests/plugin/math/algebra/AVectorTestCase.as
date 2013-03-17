package tests.plugin.math.algebra 
{
	import asunit.framework.TestCase;
	import asunit.framework.TestSuite;
	import io.plugin.math.algebra.APoint;
	import io.plugin.math.algebra.AVector;
	
	/**
	 * ...
	 * @author Gary Paluk
	 */
	public class AVectorTestCase extends TestCase 
	{
		
		public function AVectorTestCase( testMethod: String ) 
		{
			super( testMethod );
		}
		
		//{ Region fromTuple
		public function fromTuple(): void
		{
			var v0: AVector = AVector.fromTuple( [ 1, 2, 3 ] );
			
			assertEquals( v0.x, 1 );
			assertEquals( v0.y, 2 );
			assertEquals( v0.z, 3 );
			assertEquals( v0.w, 0 );
		}
		//}
		
		//{ Region clone
		public function clone(): void
		{
			var v0: AVector = new AVector( 1, 2, 3 );
			var v1: AVector = v0.clone();
			
			assertEquals( v1.x, 1 );
			assertEquals( v1.y, 2 );
			assertEquals( v1.z, 3 );
			assertEquals( v1.w, 0 );
		}
		//}
		
		//{ Region toTuple
		public function toTuple(): void
		{
			var v0: AVector = new AVector( 1, 2, 3 );
			var a0: Array = v0.toTuple();
			
			assertEquals( a0[ 0 ], 1 );
			assertEquals( a0[ 1 ], 2 );
			assertEquals( a0[ 2 ], 3 );
			assertEquals( a0[ 3 ], 0 );
		}
		//}
		
		//{ Region toVector
		public function toVector(): void
		{
			var v0: AVector = new AVector( 1, 2, 3 );
			var vec0: Vector.<Number> = v0.toVector();
			
			assertEquals( vec0[ 0 ], 1 );
			assertEquals( vec0[ 1 ], 2 );
			assertEquals( vec0[ 2 ], 3 );
			assertEquals( vec0[ 3 ], 0 );
		}
		
		//}
		
		//{ Region set
		public function set(): void
		{
			var v0: AVector = new AVector();
			v0.set( 10, 20, 30 );
			
			assertEquals( v0.x, 10 );
			assertEquals( v0.y, 20 );
			assertEquals( v0.z, 30 );
			assertEquals( v0.w, 0 );
		}
		//}
		
		//{ Region add
		public function add(): void
		{
			var v0: AVector = new AVector( 1, 2, 3 );
			var v1: AVector = new AVector( 5, 5, 5 );
			
			var v2: AVector = v0.add( v1 );
			
			assertEquals( v2.x, 6 );
			assertEquals( v2.y, 7 );
			assertEquals( v2.z, 8 );
			assertEquals( v2.w, 0 );
		}
		//}
		
		//{ Region subtract
		public function subtract(): void
		{
			var v0: AVector = new AVector( 10, 20, 30 );
			var v1: AVector = new AVector( 5, 10, 15 );
			
			var v2: AVector = v0.subtract( v1 );
			
			assertEquals( v2.x, 5 );
			assertEquals( v2.y, 10 );
			assertEquals( v2.z, 15 );
			assertEquals( v2.w, 0 );
		}
		//}
		
		//{ Region subtractEq
		public function subtractEq(): void
		{
			var v0: AVector = new AVector( 10, 20, 30 );
			var v1: AVector = new AVector( 5, 10, 15 );
			v0.subtractEq( v1 );
			
			assertEquals( v0.x, 5 );
			assertEquals( v0.y, 10 );
			assertEquals( v0.z, 15 );
			assertEquals( v0.w, 0 );
			
			v0 = new AVector( -10, -20, -30 );
			v1 = new AVector( -10, -20, -30 );
			v0.subtractEq( v1 );
			
			assertEquals( v0.x, 0 );
			assertEquals( v0.y, 0 );
			assertEquals( v0.z, 0 );
			assertEquals( v0.w, 0 );
		}
		//}
		
		//{ Region scale
		public function scale(): void
		{
			var v0: AVector = new AVector( 1, 2, 3 );
			var v1: AVector = v0.scale( 2 );
			
			assertEquals( v1.x, 2 );
			assertEquals( v1.y, 4 );
			assertEquals( v1.z, 6 );
			assertEquals( v1.w, 0 );
		}
		//}
		
		//{ Region scaleEq
		public function scaleEq(): void
		{
			var v0: AVector = new AVector( 1, 2, 3 );
			v0.scaleEq( 5 );
			
			assertEquals( v0.x, 5 );
			assertEquals( v0.y, 10 );
			assertEquals( v0.z, 15 );
			assertEquals( v0.w, 0 );
		}
		//}
		
		//{ Region divide
		public function divide(): void
		{
			var v0: AVector = new AVector( 2, 4, 6 );
			var v1: AVector = v0.divide( 2 );
			
			assertEquals( v1.x, 1 );
			assertEquals( v1.y, 2 );
			assertEquals( v1.z, 3 );
			assertEquals( v1.w, 0 );
			
			v0 = new AVector( 10, 20, 30 );
			v1 = v0.divide( 0 );
			
			assertEquals( v1.x, Number.MAX_VALUE );
			assertEquals( v1.y, Number.MAX_VALUE  );
			assertEquals( v1.z, Number.MAX_VALUE  );
			assertEquals( v1.w, 0 );
		}
		//}
		
		//{ Region divideEq
		public function divideEq(): void
		{
			var v0: AVector = new AVector( 2, 4, 6 );
			v0.divideEq( 2 );
			
			assertEquals( v0.x, 1 );
			assertEquals( v0.y, 2 );
			assertEquals( v0.z, 3 );
			assertEquals( v0.w, 0 );
			
			
			v0 = new AVector( 2, 4, 6 );
			v0.divideEq( 0 );
			
			assertEquals( v0.x, Number.MAX_VALUE );
			assertEquals( v0.y, Number.MAX_VALUE );
			assertEquals( v0.z, Number.MAX_VALUE );
			assertEquals( v0.w, 0 );
			
		}
		//}
		
		//{ Region negate
		public function negate(): void
		{
			var v0: AVector = new AVector( 5, 10, 15 );
			var v1: AVector = v0.negate();
			
			assertEquals( v1.x, -5 );
			assertEquals( v1.y, -10 );
			assertEquals( v1.z, -15 );
			assertEquals( v1.w, 0 );
		}
		//}
		
		//{ Region negateEq
		public function negateEq(): void
		{
			var v0: AVector = new AVector( 1, 2, 3 );
			v0.negateEq();
			
			assertEquals( v0.x, -1 );
			assertEquals( v0.y, -2 );
			assertEquals( v0.z, -3 );
			assertEquals( v0.w, 0 );
			
			v0.negateEq();
			
			assertEquals( v0.x, 1 );
			assertEquals( v0.y, 2 );
			assertEquals( v0.z, 3 );
			assertEquals( v0.w, 0 );
		}
		//}
		
		//{ Region length
		public function length(): void
		{
			var v0: AVector = new AVector( 0.10482848367219183, 0.3144854510165755, 0.9434563530497264 );
			assertEquals( v0.length, 1 );
			
			v0 = new AVector( 1, 2, 3 );
			assertEquals( v0.length, 3.7416573867739413 );
		}
		//}
		
		//{ Region squaredLength
		public function squaredLength(): void
		{
			var v0: AVector = new AVector( 1, 2, 3 );
			assertEquals( v0.squaredLength,  14 );
		}
		//}
		
		//{ Region dotProduct
		public function dotProduct(): void
		{
			var v0: AVector = new AVector( 1, 2, 3 );
			var v1: AVector = new AVector( 4, 5, 6 );
			
			var dot: Number = v0.dotProduct( v1 );
			assertEquals( dot, 32 );
			
			v0 = new AVector( -6, -5, -4 );
			v1 = new AVector( -3, -2, -1 );
			
			dot = v0.dotProduct( v1 );
			assertEquals( dot, 32 );
		}
		//}
		
		//{ Region normalize
		public function normalize(): void
		{
			var v0: AVector = new AVector( 1, 2, 3);
			v0.normalize();
			
			assertEquals( v0.length, 1 );
		}
		//}
		
		//{ crossProduct
		public function crossProduct(): void
		{
			var v0: AVector = new AVector( 1, 2, 3 );
			var v1: AVector = new AVector( 10, 20, 30 );
			
			var v2: AVector = v0.crossProduct( v1 );
			assertEquals( v2.x, 0 );
			assertEquals( v2.y, 0 );
			assertEquals( v2.z, 0 );
			assertEquals( v2.w, 0 );
			
			v0 = new AVector( 1, 2, 3 );
			v1 = new AVector( 5, 2, 9 );
			
			v2 = v0.crossProduct( v1 );
			assertEquals( v2.x, 12 );
			assertEquals( v2.y, 6 );
			assertEquals( v2.z, -8 );
			assertEquals( v2.w, 0 );
			
		}
		//}
		
		//{ Region unitCrossProduct
		public function unitCrossProduct(): void
		{
			var v0: AVector = new AVector( 1, 2, 3 );
			var v1: AVector = new AVector( 6, 8, -20 );
			
			var v2: AVector = v0.unitCrossProduct( v1 );
			
			//(-64, 38, -4)
			//(-0.858616, 0.509803, -0.0536635)
			assertEquals( v2.x, -0.8586157594164078 );
			assertEquals( v2.y, 0.5098031071534921 );
			assertEquals( v2.z, -0.053663484963525486 );
			assertEquals( v2.w, 0 );
			
			assertEquals( v2.length, 1 );
		}
		//}
		
		//{ Region equals
		public function equals(): void
		{
			var v0: AVector = new AVector( 1, 2, 3 );
			var v1: AVector = new AVector( 2, 4, 6 );
			var v2: AVector = new AVector( 1, 2, 3 );
			
			var p0: APoint = new APoint( 1, 2, 3 );
			
			assertTrue( v0.equals( v2 ) );
			assertTrue( v1.equals( v1 ) );
			assertFalse( v0.equals( v1 ) );
			assertFalse( v0.equals( p0 ) );
		}
		//}
		
		//{ Region orthonormalize
		/**
		 * @see http://www.math.ucla.edu/~tao/resource/general/115a.3.02f/GramSchmidt.html
		 */
		public function orthonormalize(): void
		{
			var v0: AVector = new AVector(16, 2, 3);
			var v1: AVector = new AVector(1.5, 14, 1.22);
			var v2: AVector = new AVector(9, 8.7, 2.22);
			
			var a0: Array = AVector.orthonormalize( v0, v1, v2 );
			
			assertEquals( a0[0].x, 0.9755372173595077 );
			assertEquals( a0[0].y, 0.12194215216993846 );
			assertEquals( a0[0].z, 0.1829132282549077 );
			assertEquals( a0[0].w, 0 );
			assertEquals( a0[0].length, 0.9999999999999999 ); // rounding error
			
			assertEquals( a0[1].x, -0.13197617106705564);
			assertEquals( a0[1].y, 0.9902900523043303);
			assertEquals( a0[1].z, 0.04367954415474352 );
			assertEquals( a0[1].w, 0 );
			assertEquals( a0[1].length, 1 );
			
			assertEquals( a0[2].x, 0.9750887646272909 );
			assertEquals( a0[2].y, 0.12177268224138484 );
			assertEquals( a0[2].z, 0.1854004178996438 );
			assertEquals( a0[2].w, 0 );
			assertEquals( a0[2].length, 1 );
			
		}
		//}
		
		
		// TODO generateOrthonormalBasis
		// TODO generateComplementBasis
		
	}

}