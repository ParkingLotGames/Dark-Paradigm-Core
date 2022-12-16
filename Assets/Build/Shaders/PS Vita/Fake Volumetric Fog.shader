// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:False,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:False,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2509,x:32719,y:32712,varname:node_2509,prsc:2|emission-5579-OUT;n:type:ShaderForge.SFN_Tex2d,id:666,x:31885,y:32597,ptovrint:False,ptlb:Distortion,ptin:_Distortion,varname:_Distortion,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-4056-OUT;n:type:ShaderForge.SFN_Panner,id:5280,x:31413,y:32355,varname:node_5280,prsc:2,spu:1,spv:1|UVIN-1889-UVOUT,DIST-4579-OUT;n:type:ShaderForge.SFN_TexCoord,id:1889,x:31199,y:32355,varname:node_1889,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:9700,x:30912,y:32365,varname:node_9700,prsc:2;n:type:ShaderForge.SFN_Append,id:4056,x:31579,y:32688,varname:node_4056,prsc:0|A-9566-OUT,B-1889-V;n:type:ShaderForge.SFN_ComponentMask,id:9566,x:31610,y:32332,varname:node_9566,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-5280-UVOUT;n:type:ShaderForge.SFN_ValueProperty,id:9552,x:30933,y:32579,ptovrint:False,ptlb:Fog Speed,ptin:_FogSpeed,varname:_FogSpeed,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:4759,x:31101,y:32531,varname:node_4759,prsc:2|A-9700-TSL,B-9552-OUT;n:type:ShaderForge.SFN_OneMinus,id:4579,x:31272,y:32496,varname:node_4579,prsc:2|IN-4759-OUT;n:type:ShaderForge.SFN_Tex2d,id:1936,x:31885,y:32850,ptovrint:False,ptlb:Fog,ptin:_Fog,varname:_Fog,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-4056-OUT;n:type:ShaderForge.SFN_Lerp,id:5579,x:32428,y:32679,varname:node_5579,prsc:2|A-666-RGB,B-1936-RGB,T-482-OUT;n:type:ShaderForge.SFN_Slider,id:482,x:32115,y:32999,ptovrint:False,ptlb:Blending,ptin:_Blending,varname:_Blending,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Add,id:8259,x:32082,y:32695,varname:node_8259,prsc:2|A-666-R,B-1936-R;proporder:9552-482-666-1936;pass:END;sub:END;*/

Shader "PS Vita/Fake Volumetric Fog" {
    Properties {
        _FogSpeed ("Fog Speed", Float ) = 1
        _Blending ("Blending", Range(0, 1)) = 0.5
        _Distortion ("Distortion", 2D) = "white" {}
        _Fog ("Fog", 2D) = "white" {}
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
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles psp2 
            #pragma target 3.0
            uniform sampler2D _Distortion; uniform float4 _Distortion_ST;
            uniform fixed _FogSpeed;
            uniform sampler2D _Fog; uniform float4 _Fog_ST;
            uniform fixed _Blending;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
////// Lighting:
////// Emissive:
                float4 node_9700 = _Time;
                fixed2 node_4056 = float2((i.uv0+(1.0 - (node_9700.r*_FogSpeed))*float2(1,1)).r,i.uv0.g);
                fixed4 _Distortion_var = tex2D(_Distortion,TRANSFORM_TEX(node_4056, _Distortion));
                fixed4 _Fog_var = tex2D(_Fog,TRANSFORM_TEX(node_4056, _Fog));
                float3 emissive = lerp(_Distortion_var.rgb,_Fog_var.rgb,_Blending);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles psp2 
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
