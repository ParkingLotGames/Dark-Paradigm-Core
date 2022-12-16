// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:7772,x:34282,y:32936,varname:node_7772,prsc:2|emission-7146-OUT,olwid-9229-OUT,olcol-7894-RGB;n:type:ShaderForge.SFN_LightVector,id:4767,x:32693,y:32927,varname:node_4767,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:6122,x:32693,y:33061,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:2656,x:32856,y:32927,varname:node_2656,prsc:0,dt:0|A-4767-OUT,B-6122-OUT;n:type:ShaderForge.SFN_Tex2d,id:4997,x:33511,y:32837,ptovrint:False,ptlb:Ramp,ptin:_Ramp,varname:_Ramp,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:dbaef74d044129b4f81f3a3b924e99ef,ntxv:0,isnm:False|UVIN-2954-OUT;n:type:ShaderForge.SFN_Append,id:2954,x:33314,y:32837,varname:node_2954,prsc:0|A-3408-OUT,B-3543-OUT;n:type:ShaderForge.SFN_Vector1,id:3543,x:33129,y:32998,varname:node_3543,prsc:2,v1:0;n:type:ShaderForge.SFN_Color,id:7894,x:33065,y:33551,ptovrint:False,ptlb:Outline Color,ptin:_OutlineColor,varname:_OutlineColor,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:3417,x:33700,y:32961,varname:node_3417,prsc:2|A-4997-RGB,B-9578-RGB;n:type:ShaderForge.SFN_Color,id:9578,x:33511,y:33067,ptovrint:False,ptlb:Main Color,ptin:_MainColor,varname:_MainColor,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:7146,x:33975,y:32967,varname:node_7146,prsc:2|A-3417-OUT,B-2376-OUT;n:type:ShaderForge.SFN_Tex2d,id:9985,x:33695,y:33237,ptovrint:False,ptlb:Main Texture,ptin:_MainTexture,varname:_MainTexture,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:2ff1da8b93fac744183a4f1fa70550b4,ntxv:0,isnm:False|UVIN-4253-OUT;n:type:ShaderForge.SFN_Append,id:2376,x:33912,y:33104,varname:node_2376,prsc:2|A-9985-R,B-9985-G,C-9985-B;n:type:ShaderForge.SFN_Multiply,id:3408,x:33129,y:32868,varname:node_3408,prsc:2|A-2656-OUT,B-8433-OUT;n:type:ShaderForge.SFN_Vector1,id:8433,x:32856,y:33081,varname:node_8433,prsc:2,v1:-0.49;n:type:ShaderForge.SFN_ValueProperty,id:9229,x:33950,y:33273,ptovrint:False,ptlb:node_9229,ptin:_node_9229,varname:_node_9229,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Append,id:4663,x:33037,y:33097,varname:node_4663,prsc:0|A-2477-R,B-2477-R;n:type:ShaderForge.SFN_Tex2d,id:2477,x:32856,y:33167,ptovrint:False,ptlb:node_2477,ptin:_node_2477,varname:_node_2477,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:871dbf90c5fde43f2b50711f4f745889,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:2783,x:33234,y:33264,varname:node_2783,prsc:0|A-7982-OUT,B-8254-OUT;n:type:ShaderForge.SFN_Append,id:7982,x:33037,y:33222,varname:node_7982,prsc:0|A-2477-G,B-663-R;n:type:ShaderForge.SFN_Vector1,id:8254,x:33037,y:33417,varname:node_8254,prsc:0,v1:8;n:type:ShaderForge.SFN_Lerp,id:4253,x:33511,y:33254,varname:node_4253,prsc:2|A-4663-OUT,B-2783-OUT,T-118-OUT;n:type:ShaderForge.SFN_Vector1,id:118,x:33273,y:33417,varname:node_118,prsc:0,v1:0.5;n:type:ShaderForge.SFN_Tex2d,id:663,x:32650,y:33271,ptovrint:False,ptlb:node_2477_copy,ptin:_node_2477_copy,varname:_node_2477_copy,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:2c98589f135bf784697918f128900785,ntxv:0,isnm:False;proporder:9578-9985-4997-7894-9229-2477-663;pass:END;sub:END;*/

Shader "PS Vita/Stochastic/Cel Shading" {
    Properties {
        _MainColor ("Main Color", Color) = (1,1,1,1)
        _MainTexture ("Main Texture", 2D) = "white" {}
        _Ramp ("Ramp", 2D) = "white" {}
        _OutlineColor ("Outline Color", Color) = (0,0,0,1)
        _node_9229 ("node_9229", Float ) = 0
        _node_2477 ("node_2477", 2D) = "white" {}
        _node_2477_copy ("node_2477_copy", 2D) = "white" {}
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
            uniform fixed _node_9229;
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
                o.pos = UnityObjectToClipPos( float4(v.vertex.xyz + v.normal*_node_9229,1) );
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
            uniform sampler2D _Ramp; uniform float4 _Ramp_ST;
            uniform fixed4 _MainColor;
            uniform sampler2D _MainTexture; uniform float4 _MainTexture_ST;
            uniform sampler2D _node_2477; uniform float4 _node_2477_ST;
            uniform sampler2D _node_2477_copy; uniform float4 _node_2477_copy_ST;
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
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
////// Emissive:
                fixed node_2656 = dot(lightDirection,i.normalDir);
                fixed2 node_2954 = float2((node_2656*(-0.49)),0.0);
                fixed4 _Ramp_var = tex2D(_Ramp,TRANSFORM_TEX(node_2954, _Ramp));
                fixed4 _node_2477_var = tex2D(_node_2477,TRANSFORM_TEX(i.uv0, _node_2477));
                fixed4 _node_2477_copy_var = tex2D(_node_2477_copy,TRANSFORM_TEX(i.uv0, _node_2477_copy));
                fixed2 node_7982 = float2(_node_2477_var.g,_node_2477_copy_var.r);
                fixed node_8254 = 8.0;
                float2 node_4253 = lerp(float2(_node_2477_var.r,_node_2477_var.r),(node_7982*node_8254),0.5);
                fixed4 _MainTexture_var = tex2D(_MainTexture,TRANSFORM_TEX(node_4253, _MainTexture));
                float3 emissive = ((_Ramp_var.rgb*_MainColor.rgb)*float3(_MainTexture_var.r,_MainTexture_var.g,_MainTexture_var.b));
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
            uniform sampler2D _Ramp; uniform float4 _Ramp_ST;
            uniform fixed4 _MainColor;
            uniform sampler2D _MainTexture; uniform float4 _MainTexture_ST;
            uniform sampler2D _node_2477; uniform float4 _node_2477_ST;
            uniform sampler2D _node_2477_copy; uniform float4 _node_2477_copy_ST;
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
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
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
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
