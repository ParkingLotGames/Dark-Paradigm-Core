// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:False,nrmq:0,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:7772,x:34460,y:32920,varname:node_7772,prsc:2|emission-7132-OUT,voffset-675-OUT;n:type:ShaderForge.SFN_LightVector,id:4767,x:33534,y:32705,varname:node_4767,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:6122,x:33534,y:32827,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:2656,x:33717,y:32806,varname:node_2656,prsc:0,dt:0|A-4767-OUT,B-6122-OUT;n:type:ShaderForge.SFN_Multiply,id:3417,x:33912,y:32981,varname:node_3417,prsc:2|A-2656-OUT,B-9578-RGB;n:type:ShaderForge.SFN_Color,id:9578,x:33717,y:32981,ptovrint:False,ptlb:Main Color,ptin:_MainColor,varname:_MainColor,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:9985,x:33868,y:33174,ptovrint:True,ptlb:Main Texture,ptin:_MainTex,varname:_MainTex,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:bb841da32a8e41148a9fbf5f69a62d40,ntxv:0,isnm:False|UVIN-4253-OUT;n:type:ShaderForge.SFN_Append,id:4663,x:33054,y:33100,varname:node_4663,prsc:0|A-7752-OUT,B-7752-OUT;n:type:ShaderForge.SFN_Tex2d,id:2477,x:32585,y:33077,ptovrint:False,ptlb:Noise Map 1,ptin:_NoiseMap1,varname:_NoiseMap1,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:871dbf90c5fde43f2b50711f4f745889,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Append,id:7982,x:33054,y:33232,varname:node_7982,prsc:0|A-8948-OUT,B-8948-OUT;n:type:ShaderForge.SFN_Lerp,id:4253,x:33403,y:33229,varname:node_4253,prsc:0|A-4663-OUT,B-7982-OUT,T-118-OUT;n:type:ShaderForge.SFN_Vector1,id:118,x:33227,y:33502,varname:node_118,prsc:0,v1:0.5;n:type:ShaderForge.SFN_Tex2d,id:663,x:32585,y:33455,ptovrint:False,ptlb:Noise Map 2,ptin:_NoiseMap2,varname:_NoiseMap2,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:2c98589f135bf784697918f128900785,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:4764,x:33596,y:33311,varname:node_4764,prsc:0|A-4253-OUT,B-2775-OUT,T-118-OUT;n:type:ShaderForge.SFN_Append,id:2775,x:33054,y:33383,varname:node_2775,prsc:0|A-7752-OUT,B-8948-OUT;n:type:ShaderForge.SFN_Multiply,id:7132,x:34236,y:33040,varname:node_7132,prsc:2|A-3417-OUT,B-9985-RGB;n:type:ShaderForge.SFN_Multiply,id:675,x:33889,y:33556,varname:node_675,prsc:2|A-4764-OUT,B-254-OUT;n:type:ShaderForge.SFN_ValueProperty,id:254,x:33666,y:33504,ptovrint:False,ptlb:Vertex Displacement,ptin:_VertexDisplacement,varname:_VertexDisplacement,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:7752,x:32858,y:33100,varname:node_7752,prsc:0|A-4944-OUT,B-2477-R;n:type:ShaderForge.SFN_Multiply,id:8948,x:32873,y:33361,varname:node_8948,prsc:0|A-7011-OUT,B-663-R;n:type:ShaderForge.SFN_Slider,id:4944,x:32507,y:32937,ptovrint:False,ptlb:Noise Map 1 Intensity,ptin:_NoiseMap1Intensity,varname:_NoiseMap1Intensity,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2307692,max:1;n:type:ShaderForge.SFN_Slider,id:7011,x:32507,y:33310,ptovrint:False,ptlb:Noise Map 2 Intensity,ptin:_NoiseMap2Intensity,varname:_NoiseMap2Intensity,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.3247863,max:1;n:type:ShaderForge.SFN_ValueProperty,id:1088,x:33638,y:33637,ptovrint:False,ptlb:Vertex Displacement_copy,ptin:_VertexDisplacement_copy,varname:_VertexDisplacement_copy,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;proporder:9578-9985-2477-663-254-4944-7011;pass:END;sub:END;*/

Shader "PS Vita/Terrain/Vertex Displacement/Diffuse" {
    Properties {
        _MainColor ("Main Color", Color) = (1,1,1,1)
        _MainTex ("Main Texture", 2D) = "white" {}
        _NoiseMap1 ("Noise Map 1", 2D) = "white" {}
        _NoiseMap2 ("Noise Map 2", 2D) = "white" {}
        _VertexDisplacement ("Vertex Displacement", Float ) = 1
        _NoiseMap1Intensity ("Noise Map 1 Intensity", Range(0, 1)) = 0.2307692
        _NoiseMap2Intensity ("Noise Map 2 Intensity", Range(0, 1)) = 0.3247863
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        LOD 200
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 psp2 
            #pragma target 3.0
            uniform fixed4 _MainColor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _NoiseMap1; uniform float4 _NoiseMap1_ST;
            uniform sampler2D _NoiseMap2; uniform float4 _NoiseMap2_ST;
            uniform fixed _VertexDisplacement;
            uniform fixed _NoiseMap1Intensity;
            uniform fixed _NoiseMap2Intensity;
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
                fixed4 _NoiseMap1_var = tex2Dlod(_NoiseMap1,float4(TRANSFORM_TEX(o.uv0, _NoiseMap1),0.0,0));
                fixed node_7752 = (_NoiseMap1Intensity*_NoiseMap1_var.r);
                fixed4 _NoiseMap2_var = tex2Dlod(_NoiseMap2,float4(TRANSFORM_TEX(o.uv0, _NoiseMap2),0.0,0));
                fixed node_8948 = (_NoiseMap2Intensity*_NoiseMap2_var.r);
                fixed node_118 = 0.5;
                fixed2 node_4253 = lerp(float2(node_7752,node_7752),float2(node_8948,node_8948),node_118);
                float2 node_675 = (lerp(node_4253,float2(node_7752,node_8948),node_118)*_VertexDisplacement);
                v.vertex.xyz += float3(node_675,0.0);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
////// Emissive:
                fixed node_2656 = dot(lightDirection,i.normalDir);
                fixed4 _NoiseMap1_var = tex2D(_NoiseMap1,TRANSFORM_TEX(i.uv0, _NoiseMap1));
                fixed node_7752 = (_NoiseMap1Intensity*_NoiseMap1_var.r);
                fixed4 _NoiseMap2_var = tex2D(_NoiseMap2,TRANSFORM_TEX(i.uv0, _NoiseMap2));
                fixed node_8948 = (_NoiseMap2Intensity*_NoiseMap2_var.r);
                fixed node_118 = 0.5;
                fixed2 node_4253 = lerp(float2(node_7752,node_7752),float2(node_8948,node_8948),node_118);
                fixed4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_4253, _MainTex));
                float3 emissive = ((node_2656*_MainColor.rgb)*_MainTex_var.rgb);
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
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 psp2 
            #pragma target 3.0
            uniform fixed4 _MainColor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _NoiseMap1; uniform float4 _NoiseMap1_ST;
            uniform sampler2D _NoiseMap2; uniform float4 _NoiseMap2_ST;
            uniform fixed _VertexDisplacement;
            uniform fixed _NoiseMap1Intensity;
            uniform fixed _NoiseMap2Intensity;
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
                fixed4 _NoiseMap1_var = tex2Dlod(_NoiseMap1,float4(TRANSFORM_TEX(o.uv0, _NoiseMap1),0.0,0));
                fixed node_7752 = (_NoiseMap1Intensity*_NoiseMap1_var.r);
                fixed4 _NoiseMap2_var = tex2Dlod(_NoiseMap2,float4(TRANSFORM_TEX(o.uv0, _NoiseMap2),0.0,0));
                fixed node_8948 = (_NoiseMap2Intensity*_NoiseMap2_var.r);
                fixed node_118 = 0.5;
                fixed2 node_4253 = lerp(float2(node_7752,node_7752),float2(node_8948,node_8948),node_118);
                float2 node_675 = (lerp(node_4253,float2(node_7752,node_8948),node_118)*_VertexDisplacement);
                v.vertex.xyz += float3(node_675,0.0);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
////// Lighting:
                float3 finalColor = 0;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
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
            #pragma only_renderers d3d9 d3d11 psp2 
            #pragma target 3.0
            uniform sampler2D _NoiseMap1; uniform float4 _NoiseMap1_ST;
            uniform sampler2D _NoiseMap2; uniform float4 _NoiseMap2_ST;
            uniform fixed _VertexDisplacement;
            uniform fixed _NoiseMap1Intensity;
            uniform fixed _NoiseMap2Intensity;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                fixed4 _NoiseMap1_var = tex2Dlod(_NoiseMap1,float4(TRANSFORM_TEX(o.uv0, _NoiseMap1),0.0,0));
                fixed node_7752 = (_NoiseMap1Intensity*_NoiseMap1_var.r);
                fixed4 _NoiseMap2_var = tex2Dlod(_NoiseMap2,float4(TRANSFORM_TEX(o.uv0, _NoiseMap2),0.0,0));
                fixed node_8948 = (_NoiseMap2Intensity*_NoiseMap2_var.r);
                fixed node_118 = 0.5;
                fixed2 node_4253 = lerp(float2(node_7752,node_7752),float2(node_8948,node_8948),node_118);
                float2 node_675 = (lerp(node_4253,float2(node_7752,node_8948),node_118)*_VertexDisplacement);
                v.vertex.xyz += float3(node_675,0.0);
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
