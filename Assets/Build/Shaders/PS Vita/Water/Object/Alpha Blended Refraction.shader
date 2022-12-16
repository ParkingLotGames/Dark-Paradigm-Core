// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:6231,x:32251,y:32683,varname:node_6231,prsc:2|diff-3350-RGB,alpha-3350-A;n:type:ShaderForge.SFN_Tex2d,id:3350,x:32006,y:32683,ptovrint:False,ptlb:Main Texture (RGBA),ptin:_MainTextureRGBA,varname:_MainTextureRGBA,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c8a503acfa6fe5a42b9428adb581ca26,ntxv:0,isnm:False|UVIN-9772-OUT;n:type:ShaderForge.SFN_Slider,id:5632,x:31146,y:33015,ptovrint:False,ptlb:Intensity,ptin:_Intensity,varname:_Intensity,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.03931624,max:0.1;n:type:ShaderForge.SFN_Tex2d,id:54,x:31326,y:32757,ptovrint:False,ptlb:Noise,ptin:_Noise,varname:_Noise,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:2,isnm:False|UVIN-7729-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:131,x:31304,y:32549,varname:node_131,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Lerp,id:9772,x:31796,y:32683,varname:node_9772,prsc:0|A-131-UVOUT,B-54-R,T-5632-OUT;n:type:ShaderForge.SFN_Panner,id:7729,x:31146,y:32757,varname:node_7729,prsc:0,spu:0,spv:0.1|UVIN-8838-UVOUT,DIST-901-OUT;n:type:ShaderForge.SFN_Time,id:8826,x:30787,y:32770,varname:node_8826,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:8838,x:30855,y:32613,varname:node_8838,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:901,x:30960,y:32861,varname:node_901,prsc:2|A-8826-T,B-8269-OUT;n:type:ShaderForge.SFN_Slider,id:8269,x:30630,y:32950,ptovrint:False,ptlb:Speed,ptin:_Speed,varname:_Speed,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.538461,max:20;proporder:3350-5632-54-8269;pass:END;sub:END;*/

Shader "PS Vita/Object/Alpha Blended Refraction" {
    Properties {
        _MainTextureRGBA ("Main Texture (RGBA)", 2D) = "white" {}
        _Intensity ("Intensity", Range(0, 0.1)) = 0.03931624
        _Noise ("Noise", 2D) = "black" {}
        _Speed ("Speed", Range(0, 20)) = 1.538461
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        LOD 200
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles psp2 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _MainTextureRGBA; uniform float4 _MainTextureRGBA_ST;
            uniform fixed _Intensity;
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform fixed _Speed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float4 node_8826 = _Time;
                fixed2 node_7729 = (i.uv0+(node_8826.g*_Speed)*float2(0,0.1));
                fixed4 _Noise_var = tex2D(_Noise,TRANSFORM_TEX(node_7729, _Noise));
                fixed2 node_9772 = lerp(i.uv0,float2(_Noise_var.r,_Noise_var.r),_Intensity);
                fixed4 _MainTextureRGBA_var = tex2D(_MainTextureRGBA,TRANSFORM_TEX(node_9772, _MainTextureRGBA));
                float3 diffuseColor = _MainTextureRGBA_var.rgb;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor,_MainTextureRGBA_var.a);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles psp2 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _MainTextureRGBA; uniform float4 _MainTextureRGBA_ST;
            uniform fixed _Intensity;
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform fixed _Speed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                UNITY_LIGHT_ATTENUATION(attenuation,i, i.posWorld.xyz);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 node_8826 = _Time;
                fixed2 node_7729 = (i.uv0+(node_8826.g*_Speed)*float2(0,0.1));
                fixed4 _Noise_var = tex2D(_Noise,TRANSFORM_TEX(node_7729, _Noise));
                fixed2 node_9772 = lerp(i.uv0,float2(_Noise_var.r,_Noise_var.r),_Intensity);
                fixed4 _MainTextureRGBA_var = tex2D(_MainTextureRGBA,TRANSFORM_TEX(node_9772, _MainTextureRGBA));
                float3 diffuseColor = _MainTextureRGBA_var.rgb;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor * _MainTextureRGBA_var.a,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
