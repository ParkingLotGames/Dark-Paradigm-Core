// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:0,lgpr:1,limd:0,spmd:1,trmd:1,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:False,rpth:0,vtps:0,hqsc:False,nrmq:0,nrsp:0,vomd:1,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:6,wrdp:True,dith:0,atcv:False,rfrpo:False,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:1,qpre:4,rntp:5,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32740,y:33254,varname:node_2865,prsc:2|emission-4676-OUT;n:type:ShaderForge.SFN_Relay,id:8397,x:32163,y:33237,cmnt:Refract here,varname:node_8397,prsc:0|IN-3970-OUT;n:type:ShaderForge.SFN_Relay,id:4676,x:32523,y:33354,cmnt:Modify color here,varname:node_4676,prsc:2|IN-7542-RGB;n:type:ShaderForge.SFN_Tex2dAsset,id:4430,x:31938,y:33424,ptovrint:False,ptlb:MainTex,ptin:_MainTex,cmnt:MainTex contains the color of the scene,varname:_MainTex,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ec1bc976304244549ba84e5bb0ad29d7,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:7542,x:32339,y:33354,varname:node_1672,prsc:0,tex:ec1bc976304244549ba84e5bb0ad29d7,ntxv:0,isnm:False|UVIN-8397-OUT,TEX-4430-TEX;n:type:ShaderForge.SFN_Panner,id:8133,x:31249,y:33422,varname:node_8133,prsc:0,spu:0,spv:0.1|UVIN-7206-UVOUT,DIST-9486-OUT;n:type:ShaderForge.SFN_TexCoord,id:7206,x:31078,y:33286,varname:node_7206,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:6925,x:30875,y:33345,varname:node_6925,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:9590,x:31519,y:33330,ptovrint:False,ptlb:Noise,ptin:_Noise,varname:_Noise,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-8133-UVOUT;n:type:ShaderForge.SFN_Lerp,id:3970,x:31776,y:33310,varname:node_3970,prsc:2|A-4267-UVOUT,B-9590-R,T-2835-OUT;n:type:ShaderForge.SFN_TexCoord,id:4267,x:31519,y:33154,varname:node_4267,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Slider,id:2835,x:31339,y:33683,ptovrint:False,ptlb:Intensity,ptin:_Intensity,varname:_Intensity,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:0.1;n:type:ShaderForge.SFN_Multiply,id:9486,x:31078,y:33467,varname:node_9486,prsc:2|A-6925-T,B-5266-OUT;n:type:ShaderForge.SFN_Slider,id:5266,x:30718,y:33563,ptovrint:False,ptlb:Speed,ptin:_Speed,varname:_Speed,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Panner,id:6099,x:30736,y:32209,varname:node_6099,prsc:0,spu:1,spv:1;proporder:4430-9590-2835-5266;pass:END;sub:END;*/

Shader "PS Vita/Water/Camera/Refraction" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _Noise ("Noise", 2D) = "white" {}
        _Intensity ("Intensity", Range(0, 0.1)) = 0
        _Speed ("Speed", Range(0, 1)) = 0
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Overlay+1"
            "RenderType"="Overlay"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            ZTest Always
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles psp2 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform fixed _Intensity;
            uniform fixed _Speed;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 node_6925 = _Time;
                fixed2 node_8133 = (i.uv0+(node_6925.g*_Speed)*float2(0,0.1));
                fixed4 _Noise_var = tex2D(_Noise,TRANSFORM_TEX(node_8133, _Noise));
                fixed2 node_8397 = lerp(i.uv0,float2(_Noise_var.r,_Noise_var.r),_Intensity); // Refract here
                fixed4 node_1672 = tex2D(_MainTex,TRANSFORM_TEX(node_8397, _MainTex));
                float3 emissive = node_1672.rgb;
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
