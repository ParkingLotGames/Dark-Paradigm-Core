// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:False,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:False,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2509,x:32911,y:31554,varname:node_2509,prsc:2|emission-3790-OUT,alpha-9138-OUT;n:type:ShaderForge.SFN_Color,id:9826,x:32253,y:31182,ptovrint:False,ptlb:node_9826,ptin:_node_9826,varname:_node_9826,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:1,c3:0.9293938,c4:1;n:type:ShaderForge.SFN_TexCoord,id:6152,x:29795,y:32251,varname:node_6152,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:166,x:30313,y:32410,varname:node_166,prsc:0,spu:1,spv:1|UVIN-3956-OUT,DIST-747-OUT;n:type:ShaderForge.SFN_Tex2d,id:785,x:30471,y:32410,ptovrint:False,ptlb:Pattern,ptin:_Pattern,varname:_Pattern,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:4630fc099adbe804e80a4f46ad568f10,ntxv:0,isnm:False|UVIN-166-UVOUT;n:type:ShaderForge.SFN_Time,id:848,x:29838,y:31914,varname:node_848,prsc:2;n:type:ShaderForge.SFN_RemapRange,id:6323,x:30334,y:32123,varname:node_6323,prsc:0,frmn:0,frmx:1,tomn:-1,tomx:1|IN-6152-UVOUT;n:type:ShaderForge.SFN_ArcTan2,id:5491,x:30757,y:32188,varname:node_5491,prsc:2,attp:2|A-6289-G,B-6289-R;n:type:ShaderForge.SFN_Length,id:8365,x:30744,y:31613,varname:node_8365,prsc:0|IN-6323-OUT;n:type:ShaderForge.SFN_ComponentMask,id:6289,x:30582,y:32178,varname:node_6289,prsc:0,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-6323-OUT;n:type:ShaderForge.SFN_Multiply,id:8683,x:30974,y:31904,varname:node_8683,prsc:2|A-8365-OUT,B-6328-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6328,x:30795,y:32033,ptovrint:False,ptlb:node_6328,ptin:_node_6328,varname:_node_6328,prsc:0,glob:False,taghide:True,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.01;n:type:ShaderForge.SFN_Append,id:5372,x:31287,y:32109,varname:node_5372,prsc:0|A-6892-OUT,B-1361-OUT;n:type:ShaderForge.SFN_Multiply,id:1944,x:30811,y:32488,varname:node_1944,prsc:2|A-4531-OUT,B-5133-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5133,x:30639,y:32620,ptovrint:False,ptlb:node_5133,ptin:_node_5133,varname:_node_5133,prsc:0,glob:False,taghide:True,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_RemapRange,id:4531,x:30639,y:32410,varname:node_4531,prsc:2,frmn:0,frmx:1,tomn:0,tomx:2|IN-785-R;n:type:ShaderForge.SFN_Tex2d,id:424,x:31444,y:32109,ptovrint:True,ptlb:Main Texture,ptin:_MainTex,varname:_MainTex,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:4f42e8145993b4e42890f473bce53050,ntxv:2,isnm:False|UVIN-5372-OUT;n:type:ShaderForge.SFN_Add,id:1361,x:30963,y:32250,varname:node_1361,prsc:0|A-5491-OUT,B-1944-OUT;n:type:ShaderForge.SFN_Multiply,id:3956,x:30031,y:32357,varname:node_3956,prsc:2|A-6152-UVOUT,B-3541-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3541,x:29782,y:32439,ptovrint:False,ptlb:Pattern Size,ptin:_PatternSize,varname:_PatternSize,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_Power,id:652,x:31444,y:31738,varname:node_652,prsc:0|VAL-8365-OUT,EXP-5738-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5738,x:31089,y:31818,ptovrint:False,ptlb:node_5738,ptin:_node_5738,varname:_node_5738,prsc:0,glob:False,taghide:True,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:6;n:type:ShaderForge.SFN_Multiply,id:2893,x:31670,y:31718,varname:node_2893,prsc:2|A-652-OUT,B-424-G;n:type:ShaderForge.SFN_Add,id:3883,x:31820,y:31834,varname:node_3883,prsc:0|A-2893-OUT,B-424-R,C-6644-OUT,D-4320-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9796,x:30729,y:31407,ptovrint:False,ptlb:Inner Plasma Size,ptin:_InnerPlasmaSize,varname:_InnerPlasmaSize,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;n:type:ShaderForge.SFN_Multiply,id:1528,x:32184,y:31817,varname:node_1528,prsc:2|A-6945-OUT,B-7871-OUT;n:type:ShaderForge.SFN_Floor,id:2936,x:31745,y:31596,varname:node_2936,prsc:2|IN-8365-OUT;n:type:ShaderForge.SFN_OneMinus,id:6945,x:31915,y:31596,varname:node_6945,prsc:2|IN-2936-OUT;n:type:ShaderForge.SFN_Multiply,id:6644,x:31656,y:31834,varname:node_6644,prsc:2|A-652-OUT,B-3970-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3970,x:31444,y:31944,ptovrint:False,ptlb:node_3970,ptin:_node_3970,varname:_node_3970,prsc:0,glob:False,taghide:True,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.3;n:type:ShaderForge.SFN_Power,id:7871,x:31995,y:31834,varname:node_7871,prsc:2|VAL-3883-OUT,EXP-5228-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5228,x:31820,y:31990,ptovrint:False,ptlb:node_5228,ptin:_node_5228,varname:_node_5228,prsc:0,glob:False,taghide:True,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1.5;n:type:ShaderForge.SFN_Add,id:6892,x:31005,y:32080,varname:node_6892,prsc:2|A-8683-OUT,B-747-OUT;n:type:ShaderForge.SFN_Multiply,id:747,x:30036,y:32018,varname:node_747,prsc:2|A-848-TSL,B-8457-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8457,x:29825,y:32141,ptovrint:False,ptlb:Speed,ptin:_Speed,varname:_Speed,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:10;n:type:ShaderForge.SFN_Multiply,id:8589,x:31087,y:31453,varname:node_8589,prsc:2|A-9796-OUT,B-8365-OUT;n:type:ShaderForge.SFN_OneMinus,id:2511,x:31300,y:31453,varname:node_2511,prsc:2|IN-8589-OUT;n:type:ShaderForge.SFN_Clamp01,id:4320,x:31474,y:31453,varname:node_4320,prsc:2|IN-2511-OUT;n:type:ShaderForge.SFN_Color,id:6740,x:32253,y:31393,ptovrint:False,ptlb:node_6740,ptin:_node_6740,varname:_node_6740,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.7101025,c2:0.196,c3:1,c4:1;n:type:ShaderForge.SFN_Lerp,id:6293,x:32471,y:31370,varname:node_6293,prsc:2|A-9826-RGB,B-6740-RGB,T-9138-OUT;n:type:ShaderForge.SFN_Clamp01,id:9138,x:32380,y:31852,varname:node_9138,prsc:0|IN-1528-OUT;n:type:ShaderForge.SFN_Lerp,id:3061,x:32471,y:31496,varname:node_3061,prsc:2|A-6740-RGB,B-9826-RGB,T-3883-OUT;n:type:ShaderForge.SFN_Lerp,id:3790,x:32775,y:31414,varname:node_3790,prsc:2|A-6293-OUT,B-3061-OUT,T-2141-OUT;n:type:ShaderForge.SFN_Slider,id:5426,x:31948,y:32075,ptovrint:False,ptlb:node_5426,ptin:_node_5426,varname:_node_5426,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:2141,x:32560,y:31862,varname:node_2141,prsc:2|A-9138-OUT,B-5426-OUT;proporder:6328-424-785-5133-3541-5738-3970-5228-8457-9796-9826-6740-5426;pass:END;sub:END;*/

Shader "PS Vita/Plasma" {
    Properties {
        [HideInInspector]_node_6328 ("node_6328", Float ) = 0.01
        _MainTex ("Main Texture", 2D) = "black" {}
        _Pattern ("Pattern", 2D) = "white" {}
        [HideInInspector]_node_5133 ("node_5133", Float ) = 0.1
        _PatternSize ("Pattern Size", Float ) = 0.5
        [HideInInspector]_node_5738 ("node_5738", Float ) = 6
        [HideInInspector]_node_3970 ("node_3970", Float ) = 0.3
        [HideInInspector]_node_5228 ("node_5228", Float ) = 1.5
        _Speed ("Speed", Float ) = 10
        _InnerPlasmaSize ("Inner Plasma Size", Float ) = 3
        _node_9826 ("node_9826", Color) = (0,1,0.9293938,1)
        _node_6740 ("node_6740", Color) = (0.7101025,0.196,1,1)
        _node_5426 ("node_5426", Range(0, 1)) = 0
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
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles psp2 
            #pragma target 3.0
            uniform fixed4 _node_9826;
            uniform sampler2D _Pattern; uniform float4 _Pattern_ST;
            uniform fixed _node_6328;
            uniform fixed _node_5133;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform fixed _PatternSize;
            uniform fixed _node_5738;
            uniform fixed _InnerPlasmaSize;
            uniform fixed _node_3970;
            uniform fixed _node_5228;
            uniform fixed _Speed;
            uniform fixed4 _node_6740;
            uniform fixed _node_5426;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
////// Lighting:
////// Emissive:
                fixed2 node_6323 = (i.uv0*2.0+-1.0);
                fixed node_8365 = length(node_6323);
                fixed node_652 = pow(node_8365,_node_5738);
                float4 node_848 = _Time;
                float node_747 = (node_848.r*_Speed);
                fixed2 node_6289 = node_6323.rg;
                fixed2 node_166 = ((i.uv0*_PatternSize)+node_747*float2(1,1));
                fixed4 _Pattern_var = tex2D(_Pattern,TRANSFORM_TEX(node_166, _Pattern));
                fixed2 node_5372 = float2(((node_8365*_node_6328)+node_747),(((atan2(node_6289.g,node_6289.r)/6.28318530718)+0.5)+((_Pattern_var.r*2.0+0.0)*_node_5133)));
                fixed4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_5372, _MainTex));
                fixed node_3883 = ((node_652*_MainTex_var.g)+_MainTex_var.r+(node_652*_node_3970)+saturate((1.0 - (_InnerPlasmaSize*node_8365))));
                fixed node_9138 = saturate(((1.0 - floor(node_8365))*pow(node_3883,_node_5228)));
                float3 emissive = lerp(lerp(_node_9826.rgb,_node_6740.rgb,node_9138),lerp(_node_6740.rgb,_node_9826.rgb,node_3883),(node_9138*_node_5426));
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,node_9138);
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
            #pragma only_renderers d3d9 d3d11 glcore gles psp2 
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
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
