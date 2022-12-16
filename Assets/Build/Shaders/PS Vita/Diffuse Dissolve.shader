Shader "PS Vita/Lit/Diffuse/Dissolve" {
    Properties {
        //_MainColor ("Main Color", Color) = (1,1,1,1)
        _MainTex ("Main Texture", 2D) = "white" {}
        _DissolveAmount ("Dissolve Amount", Range(0, .65)) = 0.3982906
        _DissolvePattern ("Dissolve Pattern", 2D) = "white" {}
        _DissolveRamp ("Dissolve Ramp", 2D) = "black" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="Opaque"
        }
        Pass {
            Name "DiffuseDissolvePass"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
			#include "AutoLight.cginc"
            
			#pragma multi_compile_fwdbase
            
            //fixed4 _MainColor;
            sampler2D _MainTex; float4 _MainTex_ST;
            fixed _DissolveAmount;
            sampler2D _DissolveRamp; float4 _DissolveRamp_ST;
            sampler2D _DissolvePattern; float4 _DissolvePattern_ST;
            
            struct VertexOutput {
                fixed3 diff : COLOR0;
                fixed3 ambient : COLOR1;
                SHADOW_COORDS(1) // put shadows data into TEXCOORD1
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (appdata_base v) 
			{
                VertexOutput o;
                o.pos = UnityObjectToClipPos(v.vertex);
                o.uv0 = v.texcoord;
                half3 worldNormal = UnityObjectToWorldNormal(v.normal);
                //o.posWorld = mul(unity_ObjectToWorld, v.vertex);//
                half nl = max(0, dot(worldNormal, _WorldSpaceLightPos0.xyz));
                o.diff = nl * _LightColor0.rgb;
                o.ambient = ShadeSH9(half4(worldNormal,1));
				
				//TRANSFER_SHADOW(o)
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                fixed4 _DissolvePattern_var = tex2D(_DissolvePattern,i.uv0);
                fixed fragsToDissolve = (1.0 - (_DissolvePattern_var.r+_DissolveAmount));
                clip(fragsToDissolve);
                
				fixed4 _MainTex_var = tex2D(_MainTex, i.uv0);
                fixed _burntWidth = saturate((fragsToDissolve));
                fixed2 dissolveUVScale = (i.uv0*2.0+-1.0).rg;
                fixed2 rampRadialUV = fixed2(_burntWidth,((atan2(dissolveUVScale.g,dissolveUVScale.r)/6.28318530718)+0.5));
                fixed4 _DissolveRamp_var = tex2D(_DissolveRamp,rampRadialUV);
                fixed3 burntFrags = (_DissolveRamp_var.rgb*_DissolveAmount);
                fixed3 diffuseColor = (_MainTex_var-burntFrags);
                fixed shadow = SHADOW_ATTENUATION(i);
                fixed3 lighting = i.diff * shadow + i.ambient;
/// Final Color:
                float3 finalColor = diffuseColor * lighting;
                return fixed4(finalColor,1);
            }
            ENDCG
        }

		UsePass "Legacy Shaders/VertexLit/SHADOWCASTER"
 }
}
