// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:7772,x:34282,y:32936,varname:node_7772,prsc:2|emission-7146-OUT;n:type:ShaderForge.SFN_LightVector,id:4767,x:33534,y:32705,varname:node_4767,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:6122,x:33534,y:32827,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:2656,x:33717,y:32806,varname:node_2656,prsc:0,dt:0|A-4767-OUT,B-6122-OUT;n:type:ShaderForge.SFN_Multiply,id:3417,x:33912,y:32981,varname:node_3417,prsc:2|A-2656-OUT,B-9578-RGB;n:type:ShaderForge.SFN_Color,id:9578,x:33717,y:32981,ptovrint:False,ptlb:Main Color,ptin:_MainColor,varname:_MainColor,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:7146,x:34108,y:33072,varname:node_7146,prsc:2|A-3417-OUT,B-2376-OUT;n:type:ShaderForge.SFN_Tex2d,id:9985,x:33717,y:33207,ptovrint:False,ptlb:Main Texture,ptin:_MainTexture,varname:_MainTexture,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:d8c31e82addfcfa45900b2480a52dd14,ntxv:0,isnm:False|UVIN-4764-OUT;n:type:ShaderForge.SFN_Append,id:2376,x:33912,y:33181,varname:node_2376,prsc:2|A-9985-R,B-9985-G,C-9985-B;n:type:ShaderForge.SFN_Vector1,id:8433,x:32856,y:33081,varname:node_8433,prsc:2,v1:-0.49;n:type:ShaderForge.SFN_Append,id:4663,x:33037,y:33097,varname:node_4663,prsc:0|A-2477-R,B-2477-R;n:type:ShaderForge.SFN_Tex2d,id:2477,x:32856,y:33167,ptovrint:False,ptlb:node_2477,ptin:_node_2477,varname:_node_2477,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:871dbf90c5fde43f2b50711f4f745889,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Append,id:7982,x:33037,y:33222,varname:node_7982,prsc:0|A-663-R,B-663-R;n:type:ShaderForge.SFN_Lerp,id:4253,x:33403,y:33229,varname:node_4253,prsc:2|A-4663-OUT,B-7982-OUT,T-118-OUT;n:type:ShaderForge.SFN_Vector1,id:118,x:33234,y:33417,varname:node_118,prsc:0,v1:0.5;n:type:ShaderForge.SFN_Tex2d,id:663,x:32710,y:33444,ptovrint:False,ptlb:node_2477_copy,ptin:_node_2477_copy,varname:_node_2477_copy,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:2c98589f135bf784697918f128900785,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:4764,x:33602,y:33441,varname:node_4764,prsc:2|A-2775-OUT,B-4253-OUT,T-118-OUT;n:type:ShaderForge.SFN_Append,id:2775,x:33037,y:33470,varname:node_2775,prsc:0|A-2477-R,B-663-G;n:type:ShaderForge.SFN_Vector2,id:8064,x:32517,y:33155,varname:node_8064,prsc:0,v1:0.1,v2:0.1;proporder:9578-9985-2477-663;pass:END;sub:END;*/

Shader "PS Vita/Stochastic/Diffuse" {
    Properties {
        _MainColor ("Main Color", Color) = (1,1,1,1)
        _MainTexture ("Main Texture", 2D) = "white" {}
        _node_2477 ("node_2477", 2D) = "white" {}
        _node_2477_copy ("node_2477_copy", 2D) = "white" {}
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
                fixed4 _node_2477_var = tex2D(_node_2477,TRANSFORM_TEX(i.uv0, _node_2477));
                fixed4 _node_2477_copy_var = tex2D(_node_2477_copy,TRANSFORM_TEX(i.uv0, _node_2477_copy));
                fixed node_118 = 0.5;
                float2 node_4764 = lerp(float2(_node_2477_var.r,_node_2477_copy_var.g),lerp(float2(_node_2477_var.r,_node_2477_var.r),float2(_node_2477_copy_var.r,_node_2477_copy_var.r),node_118),node_118);
                fixed4 _MainTexture_var = tex2D(_MainTexture,TRANSFORM_TEX(node_4764, _MainTexture));
                float3 emissive = ((dot(lightDirection,i.normalDir)*_MainColor.rgb)*float3(_MainTexture_var.r,_MainTexture_var.g,_MainTexture_var.b));
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
