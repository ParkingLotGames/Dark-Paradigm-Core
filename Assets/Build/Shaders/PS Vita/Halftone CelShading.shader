// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:7772,x:34452,y:32923,varname:node_7772,prsc:2|emission-7146-OUT,olwid-2054-OUT,olcol-7894-RGB;n:type:ShaderForge.SFN_LightVector,id:4767,x:32693,y:32856,varname:node_4767,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:6122,x:32693,y:32977,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:2656,x:32856,y:32927,varname:node_2656,prsc:1,dt:0|A-4767-OUT,B-6122-OUT;n:type:ShaderForge.SFN_Tex2d,id:4997,x:33423,y:32734,ptovrint:False,ptlb:Shade Ramp,ptin:_ShadeRamp,varname:_ShadeRamp,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:2910f9806b6852a42a54cd82f8a2889d,ntxv:2,isnm:False|UVIN-2954-OUT;n:type:ShaderForge.SFN_Append,id:2954,x:33222,y:32734,varname:node_2954,prsc:0|A-3408-OUT,B-3543-OUT;n:type:ShaderForge.SFN_Vector1,id:3543,x:33039,y:32768,varname:node_3543,prsc:2,v1:0;n:type:ShaderForge.SFN_Color,id:7894,x:34234,y:33563,ptovrint:False,ptlb:Outline Color,ptin:_OutlineColor,varname:_OutlineColor,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:3417,x:34049,y:32977,varname:node_3417,prsc:2|A-7163-OUT,B-9578-RGB,C-555-OUT;n:type:ShaderForge.SFN_Color,id:9578,x:33820,y:32953,ptovrint:False,ptlb:Main Color,ptin:_MainColor,varname:_MainColor,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:7146,x:34227,y:33031,varname:node_7146,prsc:2|A-3417-OUT,B-2376-OUT;n:type:ShaderForge.SFN_Tex2d,id:9985,x:33674,y:33581,ptovrint:False,ptlb:Main Texture,ptin:_MainTexture,varname:_MainTexture,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:769bcf60182111b42be7ec3e903f55cb,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Append,id:2376,x:33900,y:33557,varname:node_2376,prsc:2|A-9985-R,B-9985-G,C-9985-B;n:type:ShaderForge.SFN_Multiply,id:3408,x:33022,y:32613,varname:node_3408,prsc:0|A-2656-OUT,B-7964-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9229,x:34234,y:33410,ptovrint:False,ptlb:Outline Width,ptin:_OutlineWidth,varname:_OutlineWidth,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.05;n:type:ShaderForge.SFN_Depth,id:8247,x:32785,y:33513,varname:node_8247,prsc:2;n:type:ShaderForge.SFN_ScreenPos,id:7787,x:32785,y:33362,varname:node_7787,prsc:2,sctp:0;n:type:ShaderForge.SFN_Multiply,id:546,x:33195,y:33398,varname:node_546,prsc:0|A-7787-UVOUT,B-8247-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7964,x:32856,y:32736,ptovrint:False,ptlb:node_7964,ptin:_node_7964,varname:_node_7964,prsc:0,glob:False,taghide:True,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:-0.49;n:type:ShaderForge.SFN_Tex2d,id:6696,x:33362,y:33398,ptovrint:False,ptlb:Pattern,ptin:_Pattern,varname:_Pattern,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:2b4a9a4e11abe3b458b806ac3f2e8115,ntxv:0,isnm:False|UVIN-546-OUT;n:type:ShaderForge.SFN_Lerp,id:555,x:33894,y:33192,varname:node_555,prsc:2|A-587-RGB,B-5065-RGB,T-6797-OUT;n:type:ShaderForge.SFN_Color,id:587,x:33588,y:32981,ptovrint:False,ptlb:Pattern Color,ptin:_PatternColor,varname:_PatternColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:1,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:5065,x:33527,y:33208,ptovrint:False,ptlb:Secondary Color,ptin:_SecondaryColor,varname:_SecondaryColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.7,c2:0,c3:1,c4:1;n:type:ShaderForge.SFN_Step,id:6797,x:33674,y:33388,varname:node_6797,prsc:0|A-6696-RGB,B-3266-OUT;n:type:ShaderForge.SFN_Append,id:7163,x:33751,y:32764,varname:node_7163,prsc:2|A-4997-RGB,B-4770-OUT;n:type:ShaderForge.SFN_Multiply,id:4770,x:33588,y:32819,varname:node_4770,prsc:2|A-4997-A,B-7655-OUT;n:type:ShaderForge.SFN_Slider,id:7655,x:33180,y:33206,ptovrint:False,ptlb:.7,ptin:_7,varname:_7,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Lerp,id:2054,x:34259,y:33177,varname:node_2054,prsc:2|A-9229-OUT,B-9229-OUT,T-9229-OUT;n:type:ShaderForge.SFN_Multiply,id:3266,x:33028,y:33115,varname:node_3266,prsc:0|A-2656-OUT,B-1973-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1973,x:32862,y:33238,ptovrint:False,ptlb:Dot Depth,ptin:_DotDepth,varname:_DotDepth,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;proporder:9578-9985-4997-7894-9229-7964-6696-587-5065-7655-1973;pass:END;sub:END;*/

Shader "PS Vita/Cel Shading/Halftone Hard Light" {
    Properties {
        _MainColor ("Main Color", Color) = (1,1,1,1)
        _MainTexture ("Main Texture", 2D) = "white" {}
        _ShadeRamp ("Shade Ramp", 2D) = "black" {}
        _OutlineColor ("Outline Color", Color) = (0,0,0,1)
        _OutlineWidth ("Outline Width", Float ) = 0.05
        [HideInInspector]_node_7964 ("node_7964", Float ) = -0.49
        _Pattern ("Pattern", 2D) = "white" {}
        _PatternColor ("Pattern Color", Color) = (0,1,0,1)
        _SecondaryColor ("Secondary Color", Color) = (0.7,0,1,1)
        _7 (".7", Range(0, 1)) = 0
        _DotDepth ("Dot Depth", Float ) = 0.1
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        LOD 200
        Pass {
            Name "Outline"
            Tags {
            }
            Cull Front
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 psp2 
            #pragma target 3.0
            uniform fixed4 _OutlineColor;
            uniform fixed _OutlineWidth;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_FOG_COORDS(0)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( float4(v.vertex.xyz + v.normal*lerp(_OutlineWidth,_OutlineWidth,_OutlineWidth),1) );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                return fixed4(_OutlineColor.rgb,0);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 psp2 
            #pragma target 3.0
            uniform sampler2D _ShadeRamp; uniform float4 _ShadeRamp_ST;
            uniform fixed4 _MainColor;
            uniform sampler2D _MainTexture; uniform float4 _MainTexture_ST;
            uniform fixed _node_7964;
            uniform sampler2D _Pattern; uniform float4 _Pattern_ST;
            uniform float4 _PatternColor;
            uniform float4 _SecondaryColor;
            uniform float _7;
            uniform fixed _DotDepth;
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
                float4 projPos : TEXCOORD3;
                LIGHTING_COORDS(4,5)
                UNITY_FOG_COORDS(6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
////// Emissive:
                half node_2656 = dot(lightDirection,i.normalDir);
                fixed2 node_2954 = float2((node_2656*_node_7964),0.0);
                fixed4 _ShadeRamp_var = tex2D(_ShadeRamp,TRANSFORM_TEX(node_2954, _ShadeRamp));
                fixed2 node_546 = ((sceneUVs * 2 - 1).rg*partZ);
                fixed4 _Pattern_var = tex2D(_Pattern,TRANSFORM_TEX(node_546, _Pattern));
                fixed4 _MainTexture_var = tex2D(_MainTexture,TRANSFORM_TEX(i.uv0, _MainTexture));
                float3 emissive = ((float4(_ShadeRamp_var.rgb,(_ShadeRamp_var.a*_7))*_MainColor.rgb*lerp(_PatternColor.rgb,_SecondaryColor.rgb,step(_Pattern_var.rgb,(node_2656*_DotDepth))))*float3(_MainTexture_var.r,_MainTexture_var.g,_MainTexture_var.b)).rgb;
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
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
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 psp2 
            #pragma target 3.0
            uniform sampler2D _ShadeRamp; uniform float4 _ShadeRamp_ST;
            uniform fixed4 _MainColor;
            uniform sampler2D _MainTexture; uniform float4 _MainTexture_ST;
            uniform fixed _node_7964;
            uniform sampler2D _Pattern; uniform float4 _Pattern_ST;
            uniform float4 _PatternColor;
            uniform float4 _SecondaryColor;
            uniform float _7;
            uniform fixed _DotDepth;
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
                float4 projPos : TEXCOORD3;
                LIGHTING_COORDS(4,5)
                UNITY_FOG_COORDS(6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
////// Lighting:
                float3 finalColor = 0;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
