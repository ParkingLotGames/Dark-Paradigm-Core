// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:0,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:False,nrmq:0,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:False,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:6231,x:33735,y:32728,varname:node_6231,prsc:2|spec-1602-OUT,gloss-6548-OUT,normal-7615-OUT,emission-8830-OUT,alpha-8905-OUT,refract-8883-OUT,voffset-579-OUT;n:type:ShaderForge.SFN_Panner,id:7729,x:31105,y:33035,varname:node_7729,prsc:2,spu:1,spv:1|UVIN-8838-UVOUT,DIST-901-OUT;n:type:ShaderForge.SFN_Time,id:8826,x:30543,y:32849,varname:node_8826,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:8838,x:30735,y:33169,varname:node_8838,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:901,x:30748,y:32987,varname:node_901,prsc:2|A-8826-TSL,B-8269-OUT;n:type:ShaderForge.SFN_Slider,id:8269,x:30386,y:33030,ptovrint:False,ptlb:Texture Displacement Speed,ptin:_TextureDisplacementSpeed,varname:_TextureDisplacementSpeed,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2435897,max:1;n:type:ShaderForge.SFN_Slider,id:8822,x:33208,y:33026,ptovrint:False,ptlb:Alpha,ptin:_Alpha,varname:_Alpha,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Color,id:6922,x:32001,y:32262,ptovrint:False,ptlb:Shallow,ptin:_Shallow,varname:_Shallow,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:1,c3:0.7958136,c4:1;n:type:ShaderForge.SFN_Color,id:5723,x:32001,y:32484,ptovrint:False,ptlb:Deep,ptin:_Deep,varname:_Deep,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.05882353,c2:0.1960784,c3:0.4627451,c4:1;n:type:ShaderForge.SFN_Lerp,id:6239,x:32927,y:32282,varname:node_6239,prsc:0|A-6922-RGB,B-5723-RGB,T-9745-OUT;n:type:ShaderForge.SFN_Fresnel,id:9745,x:32148,y:32682,varname:node_9745,prsc:2|NRM-7282-OUT,EXP-4782-OUT;n:type:ShaderForge.SFN_NormalVector,id:7282,x:31595,y:32650,prsc:2,pt:True;n:type:ShaderForge.SFN_Tex2dAsset,id:4941,x:31284,y:33107,ptovrint:False,ptlb:Normal Map,ptin:_NormalMap,varname:_NormalMap,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:a53cf5449d11a15d1100a04b44295342,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:3309,x:31523,y:33033,varname:_node_3309,prsc:2,tex:a53cf5449d11a15d1100a04b44295342,ntxv:0,isnm:False|UVIN-7729-UVOUT,TEX-4941-TEX;n:type:ShaderForge.SFN_Tex2d,id:3812,x:31491,y:33217,varname:_node_2882,prsc:2,tex:a53cf5449d11a15d1100a04b44295342,ntxv:0,isnm:False|TEX-4941-TEX;n:type:ShaderForge.SFN_Tex2d,id:4338,x:32927,y:32443,ptovrint:False,ptlb:Main Texture,ptin:_MainTexture,varname:_MainTexture,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-9981-UVOUT;n:type:ShaderForge.SFN_Lerp,id:7615,x:32100,y:33147,varname:node_7615,prsc:2|A-3309-RGB,B-3812-RGB,T-3872-OUT;n:type:ShaderForge.SFN_Panner,id:9981,x:31152,y:33278,varname:node_9981,prsc:2,spu:1,spv:1|UVIN-8838-UVOUT,DIST-2086-OUT;n:type:ShaderForge.SFN_Multiply,id:2086,x:30953,y:33299,varname:node_2086,prsc:2|A-901-OUT,B-5647-OUT;n:type:ShaderForge.SFN_Vector1,id:5647,x:30721,y:33333,varname:node_5647,prsc:2,v1:-0.75;n:type:ShaderForge.SFN_Vector1,id:3872,x:31523,y:33402,varname:node_3872,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:579,x:33340,y:33299,varname:node_579,prsc:2|A-3637-RGB,B-3661-OUT,C-7282-OUT;n:type:ShaderForge.SFN_Slider,id:3661,x:32749,y:33431,ptovrint:False,ptlb:Vertex Displacement,ptin:_VertexDisplacement,varname:_VertexDisplacement,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2,max:250;n:type:ShaderForge.SFN_Multiply,id:7704,x:30735,y:33408,varname:node_7704,prsc:2|A-6106-OUT,B-8826-TSL;n:type:ShaderForge.SFN_Slider,id:6106,x:30345,y:33409,ptovrint:False,ptlb:Vertex Displacement Speed,ptin:_VertexDisplacementSpeed,varname:_VertexDisplacementSpeed,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.02260408,max:0.1;n:type:ShaderForge.SFN_Panner,id:7542,x:31134,y:33495,varname:node_7542,prsc:2,spu:0.1,spv:0.1|UVIN-8838-UVOUT,DIST-7704-OUT;n:type:ShaderForge.SFN_Tex2d,id:3637,x:31537,y:33637,varname:_node_5522,prsc:2,tex:a53cf5449d11a15d1100a04b44295342,ntxv:0,isnm:False|UVIN-7542-UVOUT,TEX-4941-TEX;n:type:ShaderForge.SFN_Multiply,id:8830,x:33247,y:32621,varname:node_8830,prsc:0|A-6239-OUT,B-4338-RGB;n:type:ShaderForge.SFN_Slider,id:4782,x:31741,y:32744,ptovrint:False,ptlb:Shallow Depth,ptin:_ShallowDepth,varname:_ShallowDepth,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.01,cur:1,max:25;n:type:ShaderForge.SFN_Lerp,id:1881,x:33346,y:32886,varname:node_1881,prsc:0|A-6922-A,B-5723-A,T-9745-OUT;n:type:ShaderForge.SFN_Multiply,id:8905,x:33534,y:32915,varname:node_8905,prsc:0|A-1881-OUT,B-8822-OUT;n:type:ShaderForge.SFN_Multiply,id:1600,x:32350,y:33189,varname:node_1600,prsc:0|A-7615-OUT,B-2910-OUT;n:type:ShaderForge.SFN_ComponentMask,id:8883,x:33340,y:33161,varname:node_8883,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-1600-OUT;n:type:ShaderForge.SFN_Slider,id:2910,x:31929,y:33336,ptovrint:False,ptlb:Refraction Intensity,ptin:_RefractionIntensity,varname:_RefractionIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_ValueProperty,id:1602,x:33434,y:32425,ptovrint:False,ptlb:Specular,ptin:_Specular,varname:_Specular,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:6548,x:33434,y:32545,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:_Gloss,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;proporder:8822-6922-5723-4338-8269-4941-3661-6106-4782-2910-1602-6548;pass:END;sub:END;*/

Shader "PS Vita/Water/Refaction/Opaque/Max Quality Alpha" {
    Properties {
        _Alpha ("Alpha", Range(0, 1)) = 1
        _Shallow ("Shallow", Color) = (0,1,0.7958136,1)
        _Deep ("Deep", Color) = (0.05882353,0.1960784,0.4627451,1)
        _MainTexture ("Main Texture", 2D) = "white" {}
        _TextureDisplacementSpeed ("Texture Displacement Speed", Range(0, 1)) = 0.2435897
        _NormalMap ("Normal Map", 2D) = "bump" {}
        _VertexDisplacement ("Vertex Displacement", Range(0, 250)) = 0.2
        _VertexDisplacementSpeed ("Vertex Displacement Speed", Range(0, 0.1)) = 0.02260408
        _ShallowDepth ("Shallow Depth", Range(0.01, 25)) = 1
        _RefractionIntensity ("Refraction Intensity", Range(0, 1)) = 1
        _Specular ("Specular", Float ) = 0
        _Gloss ("Gloss", Float ) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        LOD 200
        GrabPass{ "Refraction" }
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
            #pragma only_renderers d3d9 d3d11 glcore gles psp2 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D Refraction;
            uniform float _TextureDisplacementSpeed;
            uniform float _Alpha;
            uniform float4 _Shallow;
            uniform float4 _Deep;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform sampler2D _MainTexture; uniform float4 _MainTexture_ST;
            uniform float _VertexDisplacement;
            uniform float _VertexDisplacementSpeed;
            uniform float _ShallowDepth;
            uniform float _RefractionIntensity;
            uniform float _Specular;
            uniform float _Gloss;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 projPos : TEXCOORD5;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 node_8826 = _Time;
                float2 node_7542 = (o.uv0+(_VertexDisplacementSpeed*node_8826.r)*float2(0.1,0.1));
                float3 _node_5522 = UnpackNormal(tex2Dlod(_NormalMap,float4(TRANSFORM_TEX(node_7542, _NormalMap),0.0,0)));
                v.vertex.xyz += (_node_5522.rgb*_VertexDisplacement*v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_8826 = _Time;
                float node_901 = (node_8826.r*_TextureDisplacementSpeed);
                float2 node_7729 = (i.uv0+node_901*float2(1,1));
                float3 _node_3309 = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_7729, _NormalMap)));
                float3 _node_2882 = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(i.uv0, _NormalMap)));
                float3 node_7615 = lerp(_node_3309.rgb,_node_2882.rgb,0.5);
                float3 normalLocal = node_7615;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float2 sceneUVs = (i.projPos.xy / i.projPos.w) + (node_7615*_RefractionIntensity).rg;
                float4 sceneColor = tex2D(Refraction, sceneUVs);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _Gloss;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float3 specularColor = float3(_Specular,_Specular,_Specular);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
////// Emissive:
                float node_9745 = pow(1.0-max(0,dot(normalDirection, viewDirection)),_ShallowDepth);
                float2 node_9981 = (i.uv0+(node_901*(-0.75))*float2(1,1));
                float4 _MainTexture_var = tex2D(_MainTexture,TRANSFORM_TEX(node_9981, _MainTexture));
                float3 emissive = (lerp(_Shallow.rgb,_Deep.rgb,node_9745)*_MainTexture_var.rgb);
/// Final Color:
                float3 finalColor = specular + emissive;
                return fixed4(lerp(sceneColor.rgb, finalColor,(lerp(_Shallow.a,_Deep.a,node_9745)*_Alpha)),1);
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
            #pragma only_renderers d3d9 d3d11 glcore gles psp2 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D Refraction;
            uniform float _TextureDisplacementSpeed;
            uniform float _Alpha;
            uniform float4 _Shallow;
            uniform float4 _Deep;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform sampler2D _MainTexture; uniform float4 _MainTexture_ST;
            uniform float _VertexDisplacement;
            uniform float _VertexDisplacementSpeed;
            uniform float _ShallowDepth;
            uniform float _RefractionIntensity;
            uniform float _Specular;
            uniform float _Gloss;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 projPos : TEXCOORD5;
                LIGHTING_COORDS(6,7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 node_8826 = _Time;
                float2 node_7542 = (o.uv0+(_VertexDisplacementSpeed*node_8826.r)*float2(0.1,0.1));
                float3 _node_5522 = UnpackNormal(tex2Dlod(_NormalMap,float4(TRANSFORM_TEX(node_7542, _NormalMap),0.0,0)));
                v.vertex.xyz += (_node_5522.rgb*_VertexDisplacement*v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_8826 = _Time;
                float node_901 = (node_8826.r*_TextureDisplacementSpeed);
                float2 node_7729 = (i.uv0+node_901*float2(1,1));
                float3 _node_3309 = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_7729, _NormalMap)));
                float3 _node_2882 = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(i.uv0, _NormalMap)));
                float3 node_7615 = lerp(_node_3309.rgb,_node_2882.rgb,0.5);
                float3 normalLocal = node_7615;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float2 sceneUVs = (i.projPos.xy / i.projPos.w) + (node_7615*_RefractionIntensity).rg;
                float4 sceneColor = tex2D(Refraction, sceneUVs);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                UNITY_LIGHT_ATTENUATION(attenuation,i, i.posWorld.xyz);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _Gloss;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float3 specularColor = float3(_Specular,_Specular,_Specular);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/// Final Color:
                float3 finalColor = specular;
                float node_9745 = pow(1.0-max(0,dot(normalDirection, viewDirection)),_ShallowDepth);
                return fixed4(finalColor * (lerp(_Shallow.a,_Deep.a,node_9745)*_Alpha),0);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Back
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles psp2 
            #pragma target 3.0
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _VertexDisplacement;
            uniform float _VertexDisplacementSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_8826 = _Time;
                float2 node_7542 = (o.uv0+(_VertexDisplacementSpeed*node_8826.r)*float2(0.1,0.1));
                float3 _node_5522 = UnpackNormal(tex2Dlod(_NormalMap,float4(TRANSFORM_TEX(node_7542, _NormalMap),0.0,0)));
                v.vertex.xyz += (_node_5522.rgb*_VertexDisplacement*v.normal);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float3 normalDirection = i.normalDir;
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
