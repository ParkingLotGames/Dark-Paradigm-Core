Shader "Vita/Bump Lit" {
 
Properties {
    _MainTex ("Base (RGB)", 2D) = "white" {}
    _BumpMap ("Normal Map", 2D) = "bump" {}
}
SubShader {
    Tags { "RenderType"="Opaque" }
    LOD 250
 
CGPROGRAM
#pragma surface surf Lambert fullforwardshadows
 
sampler2D _MainTex;
sampler2D _BumpMap;
 
struct Input {
    float2 uv_MainTex;
};
 
void surf (Input IN, inout SurfaceOutput o) {
    half4 tex = tex2D(_MainTex, IN.uv_MainTex);
    half4 normal = tex2D(_BumpMap, IN.uv_MainTex);
    o.Albedo = tex.rgb;
    o.Alpha = tex.a;
    o.Normal = UnpackNormal (normal);
}
ENDCG
}
 
FallBack "Mobile/VertexLit"
}