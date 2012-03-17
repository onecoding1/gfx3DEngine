'DEFINE VECTOR TYPES

'VEC2
Type vec2
	x As Single
	y As Single
	
	DECLARE CONSTRUCTOR ()
	DECLARE CONSTRUCTOR (x As Single, y As Single)
End Type

Constructor vec2 ()
	this.x = 0
	this.y = 0
End Constructor

Constructor vec2 (x As Single, y As Single)
	this.x = x
	this.y = y
End Constructor


'VEC3
Type vec3
	x As Single
	y As Single
	z As Single

	DECLARE CONSTRUCTOR ()
	DECLARE CONSTRUCTOR (x As Single, y As Single,z As Single)
End Type

Constructor vec3 ()
	this.x = 0
	this.y = 0
	this.z = 0
End Constructor

Constructor vec3 (x As Single, y As Single, z As Single)
	this.x = x
	this.y = y
	this.z = z
End Constructor


'VEC4
Type vec4
	x As Single
	y As Single
	z As Single
	w As Single
	
	DECLARE CONSTRUCTOR ()
	DECLARE CONSTRUCTOR (x As Single, y As Single, z As Single, w As Single)
End Type

Constructor vec4 ()
	this.x = 0
	this.y = 0
	this.z = 0
End Constructor

Constructor vec4 (x As Single, y As Single, z As Single, w As Single)
	this.x = x
	this.y = y
	this.z = z
	this.w = w
End Constructor


'OPERATORS
'ADD
Operator + ( v1 As vec2, v2 As vec2 ) As vec2
  Return vec2(v1.x + v2.x, v1.y + v2.y)
End Operator

Operator + ( v1 As vec3, v2 As vec3 ) As vec3
  Return vec3(v1.x + v2.x, v1.y + v2.y, v1.z + v2.z)
End Operator

'SUBSTRACT
Operator - ( v1 As vec2, v2 As vec2 ) As vec2
  Return vec2( v1.x - v2.x, v1.y - v2.y)
End Operator

Operator - ( v1 As vec3, v2 As vec3 ) As vec3
  Return vec3( v1.x - v2.x, v1.y - v2.y, v1.z - v2.z )
End Operator

'MULTIPLY
Operator * ( v1 As vec2, v2 As vec2 ) As vec2
  Return vec2( v1.x * v2.x, v1.y * v2.y)
End Operator

Operator * ( v1 As vec3, v2 As vec3 ) As vec3
	Return vec3( v1.x * v2.x, v1.y * v2.y, v1.z * v2.z )
End Operator

Operator * ( v1 As vec3, v2 As Single ) As vec3
  Return vec3( v1.x * v2, v1.y * v2, v1.z * v2 )
End Operator

'DIVIDE
Operator / ( v1 As vec2, v2 As vec2 ) As vec2
  Return vec2( v1.x / v2.x, v1.y / v2.y)
End Operator

Operator / ( v1 As vec3, v2 As vec3 ) As vec3
  Return vec3( v1.x / v2.x, v1.y / v2.y, v1.z / v2.z )
End Operator


'FUNCTIONS TO CREATE VECTORS
Function createVec2 (x As Single, y As Single) As vec2
	Return vec2( x, y )
End Function

Function createVec3 (x As Single, y As Single, z As Single) As vec3
	Return vec3( x, y, z )
End Function

'HELPER FUNCTIONS
Function normalize(tv As vec3) As vec3
   Dim As Single length
   Dim As vec3 v = tv
   length = Sqr(v.x * v.x + v.y * v.y + v.z * v.z)
   v.x /= length
   v.y /= length
   v.z /= length
   Return v
End Function

Function dot(v1 As vec3, v2 As vec3) As Single
    return (v1.x * v2.x + v1.y * v2.y + v1.z * v2.z)
End Function

Function cross (v1 As vec3, v2 As vec3) As vec3
    Dim As vec3 v
    v.x = (v1.y * v2.z) - (v2.y * v1.z)
    v.y = (v1.z * v2.x) - (v2.z * v1.x)
    v.z = (v1.x * v2.y) - (v2.x * v1.y)
    Return v
End Function
