// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:0,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:6231,x:32719,y:32712,varname:node_6231,prsc:2|spec-3637-G,gloss-3637-R,emission-8830-OUT,alpha-8822-OUT,voffset-579-OUT;n:type:ShaderForge.SFN_Time,id:8826,x:31023,y:32751,varname:node_8826,prsc:0;n:type:ShaderForge.SFN_TexCoord,id:8838,x:31433,y:33052,varname:node_8838,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:901,x:31228,y:32889,varname:node_901,prsc:0|A-8826-TSL,B-8269-OUT;n:type:ShaderForge.SFN_Slider,id:8269,x:30890,y:32981,ptovrint:False,ptlb:Texture Displacement Speed,ptin:_TextureDisplacementSpeed,varname:_TextureDisplacementSpeed,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2435897,max:1;n:type:ShaderForge.SFN_Slider,id:8822,x:32339,y:32994,ptovrint:False,ptlb:Alpha,ptin:_Alpha,varname:_Alpha,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Color,id:6922,x:32187,y:32301,ptovrint:False,ptlb:Shallow,ptin:_Shallow,varname:_Shallow,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:1,c3:0.7958136,c4:1;n:type:ShaderForge.SFN_Color,id:5723,x:32187,y:32518,ptovrint:False,ptlb:Deep,ptin:_Deep,varname:_Deep,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.05882353,c2:0.1960784,c3:0.4627451,c4:1;n:type:ShaderForge.SFN_Lerp,id:6239,x:32379,y:32408,varname:node_6239,prsc:0|A-6922-RGB,B-5723-RGB,T-9745-OUT;n:type:ShaderForge.SFN_Fresnel,id:9745,x:32187,y:32709,varname:node_9745,prsc:2|NRM-7282-OUT;n:type:ShaderForge.SFN_NormalVector,id:7282,x:31867,y:32724,prsc:2,pt:True;n:type:ShaderForge.SFN_Tex2d,id:4338,x:32379,y:32564,ptovrint:False,ptlb:Main Texture,ptin:_MainTexture,varname:_MainTexture,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-9981-UVOUT;n:type:ShaderForge.SFN_Panner,id:9981,x:31614,y:33201,varname:node_9981,prsc:0,spu:1,spv:1|UVIN-8838-UVOUT,DIST-2086-OUT;n:type:ShaderForge.SFN_Multiply,id:2086,x:31433,y:33201,varname:node_2086,prsc:2|A-901-OUT,B-5647-OUT;n:type:ShaderForge.SFN_Vector1,id:5647,x:31201,y:33235,varname:node_5647,prsc:2,v1:-0.75;n:type:ShaderForge.SFN_Multiply,id:579,x:32468,y:33131,varname:node_579,prsc:2|A-3637-RGB,B-3661-OUT,C-7282-OUT;n:type:ShaderForge.SFN_Slider,id:3661,x:32155,y:33379,ptovrint:False,ptlb:Vertex Displacement,ptin:_VertexDisplacement,varname:_VertexDisplacement,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:160.2564,max:250;n:type:ShaderForge.SFN_Tex2d,id:3637,x:32096,y:33133,ptovrint:False,ptlb:node_4997,ptin:_node_4997,varname:_node_4997,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:a53cf5449d11a15d1100a04b44295342,ntxv:3,isnm:True|UVIN-9981-UVOUT;n:type:ShaderForge.SFN_Multiply,id:8830,x:32518,y:32532,varname:node_8830,prsc:2|A-6239-OUT,B-4338-RGB;proporder:8822-6922-5723-4338-8269-3661-3637;pass:END;sub:END;*/

Shader "PS Vita/Water With Depth Perf" {
    Properties {
        _Alpha ("Alpha", Range(0, 1)) = 1
        _Shallow ("Shallow", Color) = (0,1,0.7958136,1)
        _Deep ("Deep", Color) = (0.05882353,0.1960784,0.4627451,1)
        _MainTexture ("Main Texture", 2D) = "white" {}
        _TextureDisplacementSpeed ("Texture Displacement Speed", Range(0, 1)) = 0.2435897
        _VertexDisplacement ("Vertex Displacement", Range(0, 250)) = 160.2564
        _node_4997 ("node_4997", 2D) = "bump" {}
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
            uniform fixed4 _Deep;
            uniform sampler2D _MainTexture; uniform float4 _MainTexture_ST;
            uniform fixed _VertexDisplacement;
            uniform sampler2D _node_4997; uniform float4 _node_4997_ST;
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
                fixed node_901 = (node_8826.r*_TextureDisplacementSpeed);
                fixed2 node_9981 = (o.uv0+(node_901*(-0.75))*float2(1,1));
                fixed3 _node_4997_var = UnpackNormal(tex2Dlod(_node_4997,float4(TRANSFORM_TEX(node_9981, _node_4997),0.0,0)));
                v.vertex.xyz += (_node_4997_var.rgb*_VertexDisplacement*v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                fixed4 node_8826 = _Time;
                fixed node_901 = (node_8826.r*_TextureDisplacementSpeed);
                fixed2 node_9981 = (i.uv0+(node_901*(-0.75))*float2(1,1));
                fixed3 _node_4997_var = UnpackNormal(tex2D(_node_4997,TRANSFORM_TEX(node_9981, _node_4997)));
                float gloss = _node_4997_var.r;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float3 specularColor = float3(_node_4997_var.g,_node_4997_var.g,_node_4997_var.g);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
////// Emissive:
                fixed4 _MainTexture_var = tex2D(_MainTexture,TRANSFORM_TEX(node_9981, _MainTexture));
                float3 emissive = (lerp(_Shallow.rgb,_Deep.rgb,(1.0-max(0,dot(normalDirection, viewDirection))))*_MainTexture_var.rgb);
/// Final Color:
                float3 finalColor = specular + emissive;
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
            uniform fixed4 _Deep;
            uniform sampler2D _MainTexture; uniform float4 _MainTexture_ST;
            uniform fixed _VertexDisplacement;
            uniform sampler2D _node_4997; uniform float4 _node_4997_ST;
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
                fixed node_901 = (node_8826.r*_TextureDisplacementSpeed);
                fixed2 node_9981 = (o.uv0+(node_901*(-0.75))*float2(1,1));
                fixed3 _node_4997_var = UnpackNormal(tex2Dlod(_node_4997,float4(TRANSFORM_TEX(node_9981, _node_4997),0.0,0)));
                v.vertex.xyz += (_node_4997_var.rgb*_VertexDisplacement*v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                UNITY_LIGHT_ATTENUATION(attenuation,i, i.posWorld.xyz);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                fixed4 node_8826 = _Time;
                fixed node_901 = (node_8826.r*_TextureDisplacementSpeed);
                fixed2 node_9981 = (i.uv0+(node_901*(-0.75))*float2(1,1));
                fixed3 _node_4997_var = UnpackNormal(tex2D(_node_4997,TRANSFORM_TEX(node_9981, _node_4997)));
                float gloss = _node_4997_var.r;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float3 specularColor = float3(_node_4997_var.g,_node_4997_var.g,_node_4997_var.g);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/// Final Color:
                float3 finalColor = specular;
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
            uniform fixed _VertexDisplacement;
            uniform sampler2D _node_4997; uniform float4 _node_4997_ST;
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
                fixed node_901 = (node_8826.r*_TextureDisplacementSpeed);
                fixed2 node_9981 = (o.uv0+(node_901*(-0.75))*float2(1,1));
                fixed3 _node_4997_var = UnpackNormal(tex2Dlod(_node_4997,float4(TRANSFORM_TEX(node_9981, _node_4997),0.0,0)));
                v.vertex.xyz += (_node_4997_var.rgb*_VertexDisplacement*v.normal);
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
