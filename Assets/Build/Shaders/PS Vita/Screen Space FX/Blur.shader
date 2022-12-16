// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:1,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:False,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:1,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:6,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:1,qpre:4,rntp:5,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:33099,y:32815,varname:node_2865,prsc:2|custl-7982-OUT;n:type:ShaderForge.SFN_Divide,id:7927,x:33838,y:33443,varname:node_7927,prsc:0|A-9467-OUT,B-6483-OUT;n:type:ShaderForge.SFN_Add,id:6313,x:33204,y:33408,varname:node_6313,prsc:0|A-835-RGB,B-8213-RGB,C-4270-RGB,D-1281-RGB,E-1530-RGB;n:type:ShaderForge.SFN_Vector1,id:6483,x:33668,y:33622,varname:node_6483,prsc:2,v1:9;n:type:ShaderForge.SFN_SceneColor,id:835,x:32168,y:33216,varname:node_835,prsc:2|UVIN-1592-OUT;n:type:ShaderForge.SFN_SceneColor,id:8213,x:32162,y:33386,varname:node_8213,prsc:2|UVIN-2336-OUT;n:type:ShaderForge.SFN_ScreenPos,id:2451,x:30560,y:33416,varname:node_2451,prsc:2,sctp:2;n:type:ShaderForge.SFN_Append,id:1592,x:31977,y:33216,varname:node_1592,prsc:2|A-1586-OUT,B-3355-OUT;n:type:ShaderForge.SFN_Append,id:2336,x:31977,y:33357,varname:node_2336,prsc:2|A-5652-OUT,B-5018-OUT;n:type:ShaderForge.SFN_Add,id:3395,x:30778,y:33026,varname:node_3395,prsc:2|A-1237-OUT,B-7766-OUT;n:type:ShaderForge.SFN_Slider,id:1256,x:30580,y:33779,ptovrint:False,ptlb:Offset,ptin:_Offset,varname:_Offset,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Add,id:1586,x:31779,y:33100,varname:node_1586,prsc:2|A-9696-OUT,B-6362-OUT;n:type:ShaderForge.SFN_Add,id:5018,x:31800,y:33382,varname:node_5018,prsc:2|A-1645-OUT,B-2253-OUT;n:type:ShaderForge.SFN_SceneColor,id:1530,x:32831,y:33446,varname:node_1530,prsc:2|UVIN-2140-OUT;n:type:ShaderForge.SFN_ObjectPosition,id:2124,x:30243,y:33836,varname:node_2124,prsc:2;n:type:ShaderForge.SFN_ViewPosition,id:3920,x:30243,y:33960,varname:node_3920,prsc:2;n:type:ShaderForge.SFN_Divide,id:349,x:30903,y:33820,varname:node_349,prsc:0|A-1256-OUT,B-7235-OUT;n:type:ShaderForge.SFN_Distance,id:3186,x:30419,y:33889,varname:node_3186,prsc:0|A-2124-XYZ,B-3920-XYZ;n:type:ShaderForge.SFN_Divide,id:7235,x:30743,y:33889,varname:node_7235,prsc:2|A-3186-OUT,B-8738-OUT;n:type:ShaderForge.SFN_Log,id:8738,x:30580,y:33925,varname:node_8738,prsc:2,lt:0|IN-3186-OUT;n:type:ShaderForge.SFN_Set,id:1116,x:31056,y:33820,varname:Offset,prsc:0|IN-349-OUT;n:type:ShaderForge.SFN_Get,id:1237,x:30575,y:33026,varname:node_1237,prsc:2|IN-1116-OUT;n:type:ShaderForge.SFN_Get,id:9696,x:31594,y:33100,varname:node_9696,prsc:2|IN-1116-OUT;n:type:ShaderForge.SFN_Get,id:2253,x:31623,y:33357,varname:node_2253,prsc:2|IN-1116-OUT;n:type:ShaderForge.SFN_Set,id:8200,x:30733,y:33436,varname:U_ScreenPos,prsc:0|IN-2451-U;n:type:ShaderForge.SFN_Set,id:9981,x:30733,y:33540,varname:V_ScreenPos,prsc:0|IN-2451-V;n:type:ShaderForge.SFN_Set,id:4841,x:30733,y:33330,varname:UV_ScreenPos,prsc:0|IN-2451-UVOUT;n:type:ShaderForge.SFN_Get,id:7766,x:30575,y:33072,varname:node_7766,prsc:2|IN-4841-OUT;n:type:ShaderForge.SFN_Get,id:5652,x:31779,y:33332,varname:node_5652,prsc:2|IN-8200-OUT;n:type:ShaderForge.SFN_Get,id:6362,x:31594,y:33151,varname:node_6362,prsc:2|IN-8200-OUT;n:type:ShaderForge.SFN_Get,id:2140,x:32606,y:33446,varname:node_2140,prsc:2|IN-4841-OUT;n:type:ShaderForge.SFN_Get,id:1645,x:31623,y:33407,varname:node_1645,prsc:2|IN-9981-OUT;n:type:ShaderForge.SFN_Get,id:3355,x:31779,y:33236,varname:node_3355,prsc:2|IN-9981-OUT;n:type:ShaderForge.SFN_Set,id:3010,x:33995,y:33456,varname:Blur,prsc:0|IN-7927-OUT;n:type:ShaderForge.SFN_Get,id:7982,x:32894,y:33050,varname:node_7982,prsc:2|IN-3010-OUT;n:type:ShaderForge.SFN_SceneColor,id:4270,x:32199,y:33799,varname:node_4270,prsc:2|UVIN-2836-OUT;n:type:ShaderForge.SFN_SceneColor,id:1281,x:32193,y:33969,varname:node_1281,prsc:2|UVIN-4271-OUT;n:type:ShaderForge.SFN_Append,id:2836,x:32008,y:33799,varname:node_2836,prsc:2|A-4192-OUT,B-9926-OUT;n:type:ShaderForge.SFN_Append,id:4271,x:32008,y:33940,varname:node_4271,prsc:2|A-1792-OUT,B-5263-OUT;n:type:ShaderForge.SFN_Get,id:1058,x:31625,y:33638,varname:node_1058,prsc:0|IN-1116-OUT;n:type:ShaderForge.SFN_Get,id:2657,x:31625,y:33900,varname:node_2657,prsc:0|IN-1116-OUT;n:type:ShaderForge.SFN_Get,id:1792,x:31810,y:33912,varname:node_1792,prsc:2|IN-8200-OUT;n:type:ShaderForge.SFN_Get,id:9369,x:31625,y:33734,varname:node_9369,prsc:0|IN-8200-OUT;n:type:ShaderForge.SFN_Get,id:4999,x:31625,y:33995,varname:node_4999,prsc:0|IN-9981-OUT;n:type:ShaderForge.SFN_Get,id:9926,x:31810,y:33809,varname:node_9926,prsc:2|IN-9981-OUT;n:type:ShaderForge.SFN_Subtract,id:5263,x:31831,y:33959,varname:node_5263,prsc:2|A-4999-OUT,B-2657-OUT;n:type:ShaderForge.SFN_Subtract,id:4192,x:31831,y:33683,varname:node_4192,prsc:2|A-9369-OUT,B-1058-OUT;n:type:ShaderForge.SFN_Add,id:1083,x:31812,y:34132,varname:node_1083,prsc:2|A-975-OUT,B-8116-OUT;n:type:ShaderForge.SFN_Get,id:975,x:31627,y:34132,varname:node_975,prsc:2|IN-4841-OUT;n:type:ShaderForge.SFN_Get,id:8116,x:31627,y:34183,varname:node_8116,prsc:2|IN-1116-OUT;n:type:ShaderForge.SFN_SceneColor,id:4133,x:31984,y:34132,varname:node_4133,prsc:2|UVIN-1083-OUT;n:type:ShaderForge.SFN_Add,id:9467,x:33581,y:33415,varname:node_9467,prsc:2|A-6313-OUT,B-455-OUT;n:type:ShaderForge.SFN_Get,id:249,x:31627,y:34234,varname:node_249,prsc:2|IN-4841-OUT;n:type:ShaderForge.SFN_Get,id:5089,x:31627,y:34328,varname:node_5089,prsc:2|IN-1116-OUT;n:type:ShaderForge.SFN_SceneColor,id:1000,x:31984,y:34277,varname:node_1000,prsc:2|UVIN-4336-OUT;n:type:ShaderForge.SFN_Subtract,id:4336,x:31812,y:34277,varname:node_4336,prsc:2|A-249-OUT,B-5089-OUT;n:type:ShaderForge.SFN_Add,id:455,x:32378,y:34135,varname:node_455,prsc:2|A-4133-RGB,B-1000-RGB,C-4094-RGB,D-4464-RGB;n:type:ShaderForge.SFN_Add,id:8978,x:31815,y:34432,varname:node_8978,prsc:2|A-1635-OUT,B-3121-OUT;n:type:ShaderForge.SFN_Get,id:1635,x:31627,y:34432,varname:node_1635,prsc:2|IN-9981-OUT;n:type:ShaderForge.SFN_Get,id:3121,x:31627,y:34489,varname:node_3121,prsc:2|IN-1116-OUT;n:type:ShaderForge.SFN_SceneColor,id:4094,x:32153,y:34432,varname:node_4094,prsc:2|UVIN-293-OUT;n:type:ShaderForge.SFN_Get,id:1674,x:31627,y:34593,varname:node_1674,prsc:2|IN-8200-OUT;n:type:ShaderForge.SFN_SceneColor,id:4464,x:32173,y:34744,varname:node_4464,prsc:2|UVIN-1115-OUT;n:type:ShaderForge.SFN_Subtract,id:6763,x:31815,y:34577,varname:node_6763,prsc:2|A-1674-OUT,B-3121-OUT;n:type:ShaderForge.SFN_Append,id:293,x:31994,y:34490,varname:node_293,prsc:2|A-6763-OUT,B-8978-OUT;n:type:ShaderForge.SFN_Add,id:3250,x:31815,y:34698,varname:node_3250,prsc:2|A-1619-OUT,B-7780-OUT;n:type:ShaderForge.SFN_Get,id:1619,x:31627,y:34698,varname:node_1619,prsc:2|IN-8200-OUT;n:type:ShaderForge.SFN_Get,id:7780,x:31627,y:34755,varname:node_7780,prsc:2|IN-1116-OUT;n:type:ShaderForge.SFN_Get,id:7366,x:31627,y:34859,varname:node_7366,prsc:2|IN-9981-OUT;n:type:ShaderForge.SFN_Subtract,id:3018,x:31815,y:34843,varname:node_3018,prsc:2|A-7366-OUT,B-7780-OUT;n:type:ShaderForge.SFN_Append,id:1115,x:31994,y:34756,varname:node_1115,prsc:2|A-3250-OUT,B-3018-OUT;proporder:1256;pass:END;sub:END;*/

Shader "PS Vita/Screen Space Effects/Blur" {
    Properties {
        _Offset ("Offset", Range(0, 1)) = 0
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Overlay+1"
            "RenderType"="Overlay"
        }
        GrabPass{ }
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
            uniform sampler2D _GrabTexture;
            uniform fixed _Offset;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 projPos : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeGrabScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
////// Lighting:
                fixed node_3186 = distance(objPos.rgb,_WorldSpaceCameraPos);
                fixed Offset = (_Offset/(node_3186/log(node_3186)));
                fixed U_ScreenPos = sceneUVs.r;
                fixed V_ScreenPos = sceneUVs.g;
                fixed2 UV_ScreenPos = sceneUVs.rg;
                float node_3121 = Offset;
                float node_7780 = Offset;
                fixed3 Blur = (((tex2D( _GrabTexture, float2((Offset+U_ScreenPos),V_ScreenPos)).rgb+tex2D( _GrabTexture, float2(U_ScreenPos,(V_ScreenPos+Offset))).rgb+tex2D( _GrabTexture, float2((U_ScreenPos-Offset),V_ScreenPos)).rgb+tex2D( _GrabTexture, float2(U_ScreenPos,(V_ScreenPos-Offset))).rgb+tex2D( _GrabTexture, UV_ScreenPos).rgb)+(tex2D( _GrabTexture, (UV_ScreenPos+Offset)).rgb+tex2D( _GrabTexture, (UV_ScreenPos-Offset)).rgb+tex2D( _GrabTexture, float2((U_ScreenPos-node_3121),(V_ScreenPos+node_3121))).rgb+tex2D( _GrabTexture, float2((U_ScreenPos+node_7780),(V_ScreenPos-node_7780))).rgb))/9.0);
                float3 finalColor = Blur;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
