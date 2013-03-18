package tests 
{
	import asunit.framework.TestSuite;
	import tests.plugin.math.algebra.APointTestCase;
	import tests.plugin.math.algebra.AVectorTestCase;
	
	/**
	 * ...
	 * @author Gary Paluk
	 */
	public class MathTests extends TestSuite 
	{
		
		public function MathTests() 
		{
			super();
			
			// plugin.math.algebra.APoint
			addTest( new APointTestCase( "clone" ) );
			addTest( new APointTestCase( "toTuple" ) );
			addTest( new APointTestCase( "toVector" ) );
			addTest( new APointTestCase( "set" ) );
			addTest( new APointTestCase( "add" ) );
			addTest( new APointTestCase( "addEq" ) );
			addTest( new APointTestCase( "addAVector" ) );
			addTest( new APointTestCase( "addAVectorEq" ) );
			addTest( new APointTestCase( "subtract" ) );
			addTest( new APointTestCase( "subtractEq" ) );
			addTest( new APointTestCase( "subtractAVectorEq" ) );
			addTest( new APointTestCase( "scale" ) );
			addTest( new APointTestCase( "scaleEq" ) );
			addTest( new APointTestCase( "divide" ) );
			addTest( new APointTestCase( "divideEq" ) );
			addTest( new APointTestCase( "negate" ) );
			addTest( new APointTestCase( "negateEq" ) );
			addTest( new APointTestCase( "dotProduct" ) );
			addTest( new APointTestCase( "equals" ) );
			
			// plugin.math.algebra.AVector
			addTest( new AVectorTestCase( "fromTuple" ) );
			addTest( new AVectorTestCase( "clone" ) );
			addTest( new AVectorTestCase( "toTuple" ) );
			addTest( new AVectorTestCase( "toVector" ) );
			addTest( new AVectorTestCase( "set" ) );
			addTest( new AVectorTestCase( "subtract" ) );
			addTest( new AVectorTestCase( "subtractEq" ) );
			addTest( new AVectorTestCase( "scale" ) );
			addTest( new AVectorTestCase( "scaleEq" ) );
			addTest( new AVectorTestCase( "divide" ) );
			addTest( new AVectorTestCase( "divideEq" ) );
			addTest( new AVectorTestCase( "negate" ) );
			addTest( new AVectorTestCase( "negateEq" ) );
			addTest( new AVectorTestCase( "length" ) );
			addTest( new AVectorTestCase( "squaredLength" ) );
			addTest( new AVectorTestCase( "dotProduct" ) );
			addTest( new AVectorTestCase( "normalize" ) );
			addTest( new AVectorTestCase( "crossProduct" ) );
			addTest( new AVectorTestCase( "unitCrossProduct" ) );
			addTest( new AVectorTestCase( "equals" ) );
			addTest( new AVectorTestCase( "orthonormalize" ) );
			
			
		}
		
	}

}