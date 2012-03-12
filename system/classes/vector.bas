'DEFINE VECTOR TYPES
Type vec2
	x As Single
	y As Single
End Type

Type vec3
	x As Single
	y As Single
	z As Single
End Type

Type vec4
	x As Single
	y As Single
	z As Single
	w As Single
End Type


'OPERATORS
'ADD
Operator + ( v1 As vec2, v2 As vec2 ) As vec2
  Return type<vec2>( v1.x + v2.x, v1.y + v2.y)
End Operator

Operator + ( v1 As vec3, v2 As vec3 ) As vec3
  Return type<vec3>( v1.x + v2.x, v1.y + v2.y, v1.z + v2.z )
End Operator

'SUBSTRACT
Operator - ( v1 As vec2, v2 As vec2 ) As vec2
  Return type<vec2>( v1.x - v2.x, v1.y - v2.y)
End Operator

Operator - ( v1 As vec3, v2 As vec3 ) As vec3
  Return type<vec3>( v1.x - v2.x, v1.y - v2.y, v1.z - v2.z )
End Operator

'MULTIPLY
Operator * ( v1 As vec2, v2 As vec2 ) As vec2
  Return type<vec2>( v1.x * v2.x, v1.y * v2.y)
End Operator

Operator * ( v1 As vec3, v2 As vec3 ) As vec3
	Return type<vec3>( v1.x * v2.x, v1.y * v2.y, v1.z * v2.z )
End Operator

Operator * ( v1 As vec3, v2 As Single ) As vec3
  Return type<vec3>( v1.x * v2, v1.y * v2, v1.z * v2 )
End Operator

'DIVIDE
Operator / ( v1 As vec2, v2 As vec2 ) As vec2
  Return type<vec2>( v1.x / v2.x, v1.y / v2.y)
End Operator

Operator / ( v1 As vec3, v2 As vec3 ) As vec3
  Return type<vec3>( v1.x / v2.x, v1.y / v2.y, v1.z / v2.z )
End Operator


'FUNCTIONS TO CREATE VECTORS
Function createVec2 (x As Single, y As Single) As vec2
	Return type<vec2>( x, y )
End Function

Function createVec3 (x As Single, y As Single, z As Single) As vec3
	Return type<vec3>( x, y, z )
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
