// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:6231,x:32719,y:32712,varname:node_6231,prsc:2|diff-324-OUT;n:type:ShaderForge.SFN_Tex2d,id:3350,x:32180,y:32668,ptovrint:False,ptlb:Main Texture (RGBA),ptin:_MainTextureRGBA,varname:_MainTextureRGBA,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:f4aa750a06e53450ab5b59bf426152a1,ntxv:0,isnm:False|UVIN-8014-OUT;n:type:ShaderForge.SFN_Slider,id:5632,x:31279,y:32731,ptovrint:False,ptlb:Texture Displacement Intensity,ptin:_TextureDisplacementIntensity,varname:_TextureDisplacementIntensity,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1,max:0.1;n:type:ShaderForge.SFN_Panner,id:7729,x:31236,y:32460,varname:node_7729,prsc:0,spu:1,spv:1|UVIN-8838-UVOUT,DIST-901-OUT;n:type:ShaderForge.SFN_Time,id:8826,x:30728,y:32819,varname:node_8826,prsc:0;n:type:ShaderForge.SFN_TexCoord,id:8838,x:30855,y:32613,varname:node_8838,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:901,x:30956,y:32770,varname:node_901,prsc:0|A-8826-TSL,B-8269-OUT;n:type:ShaderForge.SFN_Slider,id:8269,x:30571,y:33003,ptovrint:False,ptlb:Texture Displacement Speed,ptin:_TextureDisplacementSpeed,varname:_TextureDisplacementSpeed,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:0.1;n:type:ShaderForge.SFN_Lerp,id:8014,x:31822,y:32674,varname:node_8014,prsc:0|A-7729-UVOUT,B-8838-UVOUT,T-5632-OUT;n:type:ShaderForge.SFN_Noise,id:5121,x:31436,y:32522,varname:node_5121,prsc:2;n:type:ShaderForge.SFN_Multiply,id:324,x:32493,y:32708,varname:node_324,prsc:2|A-3350-RGB,B-4570-RGB;n:type:ShaderForge.SFN_Color,id:4570,x:32180,y:32905,ptovrint:False,ptlb:node_4570,ptin:_node_4570,varname:_node_4570,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;proporder:3350-5632-8269-4570;pass:END;sub:END;*/

Shader "PS Vita/Water Surface Fastest" {
    Properties {
        _MainTextureRGBA ("Main Texture (RGBA)", 2D) = "white" {}
        _TextureDisplacementIntensity ("Texture Displacement Intensity", Range(0, 0.1)) = 0.1
        _TextureDisplacementSpeed ("Texture Displacement Speed", Range(0, 0.1)) = 0
        _node_4570 ("node_4570", Color) = (0.5,0.5,0.5,1)
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
            #pragma only_renderers d3d9 d3d11 glcore gles psp2 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _MainTextureRGBA; uniform float4 _MainTextureRGBA_ST;
            uniform fixed _TextureDisplacementIntensity;
            uniform fixed _TextureDisplacementSpeed;
            uniform float4 _node_4570;
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
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                UNITY_LIGHT_ATTENUATION(attenuation,i, i.posWorld.xyz);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                fixed4 node_8826 = _Time;
                fixed2 node_8014 = lerp((i.uv0+(node_8826.r*_TextureDisplacementSpeed)*float2(1,1)),i.uv0,_TextureDisplacementIntensity);
                fixed4 _MainTextureRGBA_var = tex2D(_MainTextureRGBA,TRANSFORM_TEX(node_8014, _MainTextureRGBA));
                float3 diffuseColor = (_MainTextureRGBA_var.rgb*_node_4570.rgb);
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
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
            #pragma only_renderers d3d9 d3d11 glcore gles psp2 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _MainTextureRGBA; uniform float4 _MainTextureRGBA_ST;
            uniform fixed _TextureDisplacementIntensity;
            uniform fixed _TextureDisplacementSpeed;
            uniform float4 _node_4570;
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
                fixed4 node_8826 = _Time;
                fixed2 node_8014 = lerp((i.uv0+(node_8826.r*_TextureDisplacementSpeed)*float2(1,1)),i.uv0,_TextureDisplacementIntensity);
                fixed4 _MainTextureRGBA_var = tex2D(_MainTextureRGBA,TRANSFORM_TEX(node_8014, _MainTextureRGBA));
                float3 diffuseColor = (_MainTextureRGBA_var.rgb*_node_4570.rgb);
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
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
