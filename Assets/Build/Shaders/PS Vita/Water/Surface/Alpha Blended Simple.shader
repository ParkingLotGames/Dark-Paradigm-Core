// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:0,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:False,nrmq:0,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:False,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:6231,x:32719,y:32712,varname:node_6231,prsc:2|diff-3147-OUT,alpha-8822-OUT,voffset-2189-OUT;n:type:ShaderForge.SFN_Panner,id:7729,x:31612,y:32857,varname:node_7729,prsc:0,spu:0.1,spv:0.1|UVIN-8838-UVOUT,DIST-901-OUT;n:type:ShaderForge.SFN_Time,id:8826,x:31023,y:32751,varname:node_8826,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:8838,x:31399,y:32741,varname:node_8838,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:901,x:31228,y:32889,varname:node_901,prsc:2|A-8826-TSL,B-8269-OUT;n:type:ShaderForge.SFN_Slider,id:8269,x:30890,y:32981,ptovrint:False,ptlb:Texture Displacement Speed,ptin:_TextureDisplacementSpeed,varname:_TextureDisplacementSpeed,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Slider,id:8822,x:32339,y:32996,ptovrint:False,ptlb:Alpha,ptin:_Alpha,varname:_Alpha,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Color,id:6922,x:32187,y:32301,ptovrint:False,ptlb:Shallow,ptin:_Shallow,varname:_Shallow,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:1,c3:0.7958136,c4:1;n:type:ShaderForge.SFN_Multiply,id:3147,x:32561,y:32496,varname:node_3147,prsc:2|A-6922-RGB,B-4338-RGB;n:type:ShaderForge.SFN_Tex2d,id:4338,x:32379,y:32564,ptovrint:False,ptlb:Main Texture,ptin:_MainTexture,varname:_MainTexture,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:6bc67895e804d469380f279b6e60e29b,ntxv:0,isnm:False|UVIN-1989-OUT;n:type:ShaderForge.SFN_Tex2d,id:1578,x:31817,y:32839,ptovrint:False,ptlb:Main Texture_copy,ptin:_MainTexture_copy,varname:_MainTexture_copy,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:dee2c2cddc0cd4595bca292913f960ad,ntxv:2,isnm:False|UVIN-7729-UVOUT;n:type:ShaderForge.SFN_Lerp,id:1989,x:32118,y:32768,varname:node_1989,prsc:0|A-8838-UVOUT,B-1578-R,T-502-OUT;n:type:ShaderForge.SFN_Slider,id:502,x:31592,y:33096,ptovrint:False,ptlb:Texture Displacement,ptin:_TextureDisplacement,varname:_TextureDisplacement,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2,max:0.2;n:type:ShaderForge.SFN_Multiply,id:2189,x:32234,y:33080,varname:node_2189,prsc:0|A-210-OUT,B-502-OUT,C-6961-OUT;n:type:ShaderForge.SFN_NormalVector,id:6961,x:31875,y:33318,prsc:2,pt:True;n:type:ShaderForge.SFN_Multiply,id:210,x:32062,y:32993,varname:node_210,prsc:0|A-1578-R,B-8287-OUT;n:type:ShaderForge.SFN_Slider,id:8287,x:31611,y:33244,ptovrint:False,ptlb:Vertex Displacement,ptin:_VertexDisplacement,varname:_VertexDisplacement,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:4.273504,max:20;n:type:ShaderForge.SFN_Append,id:3336,x:32060,y:32587,varname:node_3336,prsc:2|A-1578-R,B-1578-G;n:type:ShaderForge.SFN_Panner,id:7693,x:30800,y:32273,varname:node_7693,prsc:0,spu:1,spv:1;n:type:ShaderForge.SFN_Panner,id:5067,x:30864,y:32337,varname:node_5067,prsc:0,spu:1,spv:1;proporder:8822-6922-8269-1578-4338-502-8287;pass:END;sub:END;*/

Shader "PS Vita/Water/Surface/Alpha Blended/Simple" {
    Properties {
        _Alpha ("Alpha", Range(0, 1)) = 1
        _Shallow ("Shallow", Color) = (0,1,0.7958136,1)
        _TextureDisplacementSpeed ("Texture Displacement Speed", Range(0, 1)) = 1
        _MainTexture_copy ("Main Texture_copy", 2D) = "black" {}
        _MainTexture ("Main Texture", 2D) = "white" {}
        _TextureDisplacement ("Texture Displacement", Range(0, 0.2)) = 0.2
        _VertexDisplacement ("Vertex Displacement", Range(0, 20)) = 4.273504
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
            uniform fixed _TextureDisplacementSpeed;
            uniform fixed _Alpha;
            uniform fixed4 _Shallow;
            uniform sampler2D _MainTexture; uniform float4 _MainTexture_ST;
            uniform sampler2D _MainTexture_copy; uniform float4 _MainTexture_copy_ST;
            uniform fixed _TextureDisplacement;
            uniform float _VertexDisplacement;
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
                float4 node_8826 = _Time;
                fixed2 node_7729 = (o.uv0+(node_8826.r*_TextureDisplacementSpeed)*float2(0.1,0.1));
                fixed4 _MainTexture_copy_var = tex2Dlod(_MainTexture_copy,float4(TRANSFORM_TEX(node_7729, _MainTexture_copy),0.0,0));
                v.vertex.xyz += ((_MainTexture_copy_var.r*_VertexDisplacement)*_TextureDisplacement*v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
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
                fixed2 node_7729 = (i.uv0+(node_8826.r*_TextureDisplacementSpeed)*float2(0.1,0.1));
                fixed4 _MainTexture_copy_var = tex2D(_MainTexture_copy,TRANSFORM_TEX(node_7729, _MainTexture_copy));
                fixed2 node_1989 = lerp(i.uv0,float2(_MainTexture_copy_var.r,_MainTexture_copy_var.r),_TextureDisplacement);
                fixed4 _MainTexture_var = tex2D(_MainTexture,TRANSFORM_TEX(node_1989, _MainTexture));
                float3 diffuseColor = (_Shallow.rgb*_MainTexture_var.rgb);
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
            uniform fixed _TextureDisplacementSpeed;
            uniform fixed _Alpha;
            uniform fixed4 _Shallow;
            uniform sampler2D _MainTexture; uniform float4 _MainTexture_ST;
            uniform sampler2D _MainTexture_copy; uniform float4 _MainTexture_copy_ST;
            uniform fixed _TextureDisplacement;
            uniform float _VertexDisplacement;
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
                float4 node_8826 = _Time;
                fixed2 node_7729 = (o.uv0+(node_8826.r*_TextureDisplacementSpeed)*float2(0.1,0.1));
                fixed4 _MainTexture_copy_var = tex2Dlod(_MainTexture_copy,float4(TRANSFORM_TEX(node_7729, _MainTexture_copy),0.0,0));
                v.vertex.xyz += ((_MainTexture_copy_var.r*_VertexDisplacement)*_TextureDisplacement*v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
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
                fixed2 node_7729 = (i.uv0+(node_8826.r*_TextureDisplacementSpeed)*float2(0.1,0.1));
                fixed4 _MainTexture_copy_var = tex2D(_MainTexture_copy,TRANSFORM_TEX(node_7729, _MainTexture_copy));
                fixed2 node_1989 = lerp(i.uv0,float2(_MainTexture_copy_var.r,_MainTexture_copy_var.r),_TextureDisplacement);
                fixed4 _MainTexture_var = tex2D(_MainTexture,TRANSFORM_TEX(node_1989, _MainTexture));
                float3 diffuseColor = (_Shallow.rgb*_MainTexture_var.rgb);
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
            uniform fixed _TextureDisplacementSpeed;
            uniform sampler2D _MainTexture_copy; uniform float4 _MainTexture_copy_ST;
            uniform fixed _TextureDisplacement;
            uniform float _VertexDisplacement;
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
                fixed2 node_7729 = (o.uv0+(node_8826.r*_TextureDisplacementSpeed)*float2(0.1,0.1));
                fixed4 _MainTexture_copy_var = tex2Dlod(_MainTexture_copy,float4(TRANSFORM_TEX(node_7729, _MainTexture_copy),0.0,0));
                v.vertex.xyz += ((_MainTexture_copy_var.r*_VertexDisplacement)*_TextureDisplacement*v.normal);
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
