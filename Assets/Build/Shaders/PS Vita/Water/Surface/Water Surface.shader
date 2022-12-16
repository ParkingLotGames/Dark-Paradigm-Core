// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:6231,x:32719,y:32712,varname:node_6231,prsc:2|diff-3350-RGB,alpha-8822-OUT,voffset-7926-OUT;n:type:ShaderForge.SFN_Tex2d,id:3350,x:32504,y:32697,ptovrint:False,ptlb:Main Texture (RGBA),ptin:_MainTextureRGBA,varname:_MainTextureRGBA,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:f4aa750a06e53450ab5b59bf426152a1,ntxv:0,isnm:False|UVIN-8014-OUT;n:type:ShaderForge.SFN_Slider,id:5632,x:31475,y:32820,ptovrint:False,ptlb:Texture Displacement Intensity,ptin:_TextureDisplacementIntensity,varname:_TextureDisplacementIntensity,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1,max:0.1;n:type:ShaderForge.SFN_Panner,id:7729,x:31236,y:32460,varname:node_7729,prsc:0,spu:1,spv:1|UVIN-8838-UVOUT,DIST-901-OUT;n:type:ShaderForge.SFN_Time,id:8826,x:30728,y:32819,varname:node_8826,prsc:0;n:type:ShaderForge.SFN_TexCoord,id:8838,x:30855,y:32613,varname:node_8838,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:901,x:30959,y:32819,varname:node_901,prsc:2|A-8826-T,B-8269-OUT;n:type:ShaderForge.SFN_Slider,id:8269,x:30571,y:33003,ptovrint:False,ptlb:Texture Displacement Speed,ptin:_TextureDisplacementSpeed,varname:_TextureDisplacementSpeed,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:0.1;n:type:ShaderForge.SFN_Slider,id:8822,x:32359,y:32966,ptovrint:False,ptlb:Alpha,ptin:_Alpha,varname:_Alpha,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Multiply,id:7926,x:32501,y:33102,varname:node_7926,prsc:2|A-1941-R,B-1757-OUT,C-1343-OUT;n:type:ShaderForge.SFN_Slider,id:1757,x:32149,y:33179,ptovrint:False,ptlb:Vertex Displacement,ptin:_VertexDisplacement,varname:_VertexDisplacement,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.1,cur:1.008358,max:100;n:type:ShaderForge.SFN_Slider,id:2398,x:30571,y:33146,ptovrint:False,ptlb:Vertex Displacement Speed,ptin:_VertexDisplacementSpeed,varname:_VertexDisplacementSpeed,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.001,cur:0.1,max:0.1;n:type:ShaderForge.SFN_Tex2d,id:1941,x:31329,y:33004,ptovrint:False,ptlb:Noise_copy,ptin:_Noise_copy,varname:_Noise_copy,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:871dbf90c5fde43f2b50711f4f745889,ntxv:0,isnm:False|UVIN-9169-UVOUT;n:type:ShaderForge.SFN_Multiply,id:174,x:30959,y:32983,varname:node_174,prsc:2|A-8826-T,B-2398-OUT;n:type:ShaderForge.SFN_Panner,id:9169,x:31171,y:32956,varname:node_9169,prsc:0,spu:0,spv:0.1|UVIN-8838-UVOUT,DIST-174-OUT;n:type:ShaderForge.SFN_NormalVector,id:1343,x:31830,y:33344,prsc:2,pt:False;n:type:ShaderForge.SFN_Lerp,id:8014,x:31822,y:32674,varname:node_8014,prsc:2|A-7729-UVOUT,B-8838-UVOUT,T-5632-OUT;proporder:3350-5632-8269-8822-1757-1941-2398;pass:END;sub:END;*/

Shader "PS Vita/Water Surface" {
    Properties {
        _MainTextureRGBA ("Main Texture (RGBA)", 2D) = "white" {}
        _TextureDisplacementIntensity ("Texture Displacement Intensity", Range(0, 0.1)) = 0.1
        _TextureDisplacementSpeed ("Texture Displacement Speed", Range(0, 0.1)) = 0
        _Alpha ("Alpha", Range(0, 1)) = 1
        _VertexDisplacement ("Vertex Displacement", Range(0.1, 100)) = 1.008358
        _Noise_copy ("Noise_copy", 2D) = "white" {}
        _VertexDisplacementSpeed ("Vertex Displacement Speed", Range(0.001, 0.1)) = 0.1
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
            uniform fixed _TextureDisplacementIntensity;
            uniform fixed _TextureDisplacementSpeed;
            uniform fixed _Alpha;
            uniform fixed _VertexDisplacement;
            uniform fixed _VertexDisplacementSpeed;
            uniform sampler2D _Noise_copy; uniform float4 _Noise_copy_ST;
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
                fixed4 node_8826 = _Time;
                fixed2 node_9169 = (o.uv0+(node_8826.g*_VertexDisplacementSpeed)*float2(0,0.1));
                fixed4 _Noise_copy_var = tex2Dlod(_Noise_copy,float4(TRANSFORM_TEX(node_9169, _Noise_copy),0.0,0));
                v.vertex.xyz += (_Noise_copy_var.r*_VertexDisplacement*v.normal);
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
                fixed4 node_8826 = _Time;
                float2 node_8014 = lerp((i.uv0+(node_8826.g*_TextureDisplacementSpeed)*float2(1,1)),i.uv0,_TextureDisplacementIntensity);
                fixed4 _MainTextureRGBA_var = tex2D(_MainTextureRGBA,TRANSFORM_TEX(node_8014, _MainTextureRGBA));
                float3 diffuseColor = _MainTextureRGBA_var.rgb;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor,_Alpha);
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
            uniform fixed _TextureDisplacementIntensity;
            uniform fixed _TextureDisplacementSpeed;
            uniform fixed _Alpha;
            uniform fixed _VertexDisplacement;
            uniform fixed _VertexDisplacementSpeed;
            uniform sampler2D _Noise_copy; uniform float4 _Noise_copy_ST;
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
                fixed4 node_8826 = _Time;
                fixed2 node_9169 = (o.uv0+(node_8826.g*_VertexDisplacementSpeed)*float2(0,0.1));
                fixed4 _Noise_copy_var = tex2Dlod(_Noise_copy,float4(TRANSFORM_TEX(node_9169, _Noise_copy),0.0,0));
                v.vertex.xyz += (_Noise_copy_var.r*_VertexDisplacement*v.normal);
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
                float2 node_8014 = lerp((i.uv0+(node_8826.g*_TextureDisplacementSpeed)*float2(1,1)),i.uv0,_TextureDisplacementIntensity);
                fixed4 _MainTextureRGBA_var = tex2D(_MainTextureRGBA,TRANSFORM_TEX(node_8014, _MainTextureRGBA));
                float3 diffuseColor = _MainTextureRGBA_var.rgb;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor * _Alpha,0);
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
            Cull Back
            
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
            uniform fixed _VertexDisplacement;
            uniform fixed _VertexDisplacementSpeed;
            uniform sampler2D _Noise_copy; uniform float4 _Noise_copy_ST;
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
                fixed4 node_8826 = _Time;
                fixed2 node_9169 = (o.uv0+(node_8826.g*_VertexDisplacementSpeed)*float2(0,0.1));
                fixed4 _Noise_copy_var = tex2Dlod(_Noise_copy,float4(TRANSFORM_TEX(node_9169, _Noise_copy),0.0,0));
                v.vertex.xyz += (_Noise_copy_var.r*_VertexDisplacement*v.normal);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
