// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:1,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:False,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:1,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:6,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:1,qpre:4,rntp:5,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32740,y:33254,varname:node_2865,prsc:2|emission-3130-OUT,alpha-694-A;n:type:ShaderForge.SFN_Relay,id:7311,x:31770,y:33373,cmnt:Refract here,varname:node_7311,prsc:0|IN-2988-OUT;n:type:ShaderForge.SFN_Relay,id:3130,x:32130,y:33490,cmnt:Modify color here,varname:node_3130,prsc:2|IN-694-RGB;n:type:ShaderForge.SFN_Tex2dAsset,id:8234,x:31545,y:33560,ptovrint:False,ptlb:MainTex_copy,ptin:_MainTex_copy,cmnt:MainTex contains the color of the scene,varname:_MainTex_copy,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ec1bc976304244549ba84e5bb0ad29d7,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:694,x:31946,y:33490,varname:node_1672,prsc:0,tex:ec1bc976304244549ba84e5bb0ad29d7,ntxv:0,isnm:False|UVIN-7311-OUT,TEX-8234-TEX;n:type:ShaderForge.SFN_Panner,id:2584,x:30856,y:33558,varname:node_2584,prsc:0,spu:0,spv:0.1|UVIN-7-UVOUT,DIST-5806-OUT;n:type:ShaderForge.SFN_TexCoord,id:7,x:30685,y:33422,varname:node_7,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:788,x:30482,y:33481,varname:node_788,prsc:1;n:type:ShaderForge.SFN_Tex2d,id:1165,x:31126,y:33466,ptovrint:False,ptlb:Noise,ptin:_Noise,varname:_Noise,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-2584-UVOUT;n:type:ShaderForge.SFN_Lerp,id:2988,x:31383,y:33446,varname:node_2988,prsc:2|A-3128-UVOUT,B-1165-R,T-4711-OUT;n:type:ShaderForge.SFN_TexCoord,id:3128,x:31126,y:33290,varname:node_3128,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Slider,id:4711,x:30946,y:33819,ptovrint:False,ptlb:Intensity,ptin:_Intensity,varname:_Intensity,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:0.1;n:type:ShaderForge.SFN_Multiply,id:5806,x:30685,y:33603,varname:node_5806,prsc:2|A-788-T,B-7906-OUT;n:type:ShaderForge.SFN_Slider,id:7906,x:30325,y:33699,ptovrint:False,ptlb:Speed,ptin:_Speed,varname:_Speed,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;proporder:1165-4711-8234-7906;pass:END;sub:END;*/

Shader "PS Vita/Screen Space Effects/Depth Of Field" {
    Properties {
        _Noise ("Noise", 2D) = "white" {}
        _Intensity ("Intensity", Range(0, 0.1)) = 0
        _MainTex_copy ("MainTex_copy", 2D) = "white" {}
        _Speed ("Speed", Range(0, 1)) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
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
            Blend SrcAlpha OneMinusSrcAlpha
            ZTest Always
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex_copy; uniform float4 _MainTex_copy_ST;
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
                half4 node_788 = _Time;
                fixed2 node_2584 = (i.uv0+(node_788.g*_Speed)*float2(0,0.1));
                fixed4 _Noise_var = tex2D(_Noise,TRANSFORM_TEX(node_2584, _Noise));
                fixed2 node_7311 = lerp(i.uv0,float2(_Noise_var.r,_Noise_var.r),_Intensity); // Refract here
                fixed4 node_1672 = tex2D(_MainTex_copy,TRANSFORM_TEX(node_7311, _MainTex_copy));
                float3 emissive = node_1672.rgb;
                float3 finalColor = emissive;
                return fixed4(finalColor,node_1672.a);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
