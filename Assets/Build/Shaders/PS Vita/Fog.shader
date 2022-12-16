// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:1,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:False,nrmq:0,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:False,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2509,x:32911,y:31554,varname:node_2509,prsc:2|emission-355-OUT,alpha-355-OUT;n:type:ShaderForge.SFN_TexCoord,id:6152,x:30223,y:32227,varname:node_6152,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:166,x:30672,y:32145,varname:node_166,prsc:0,spu:1,spv:1|UVIN-6152-UVOUT,DIST-747-OUT;n:type:ShaderForge.SFN_Tex2d,id:785,x:31439,y:32353,varname:_Patter,prsc:0,tex:79936a2c08f06d34fa7f9fe82762216b,ntxv:0,isnm:False|UVIN-1047-OUT,TEX-1670-TEX;n:type:ShaderForge.SFN_Time,id:848,x:30281,y:31408,varname:node_848,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3956,x:30481,y:32323,varname:node_3956,prsc:2|A-6152-UVOUT,B-3541-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3541,x:30223,y:32396,ptovrint:False,ptlb:Pattern Size,ptin:_PatternSize,varname:_PatternSize,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:747,x:30511,y:31532,varname:node_747,prsc:2|A-848-TSL,B-8457-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8457,x:30260,y:31591,ptovrint:False,ptlb:Speed,ptin:_Speed,varname:_Speed,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_Tex2dAsset,id:1670,x:30272,y:32772,ptovrint:False,ptlb:Pattern,ptin:_Pattern,varname:_Pattern,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:79936a2c08f06d34fa7f9fe82762216b,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:208,x:31427,y:32552,varname:_node_3396,prsc:0,tex:79936a2c08f06d34fa7f9fe82762216b,ntxv:0,isnm:False|UVIN-4166-UVOUT,TEX-1670-TEX;n:type:ShaderForge.SFN_Panner,id:4166,x:30933,y:32406,varname:node_4166,prsc:0,spu:1,spv:1|UVIN-3956-OUT,DIST-2528-OUT;n:type:ShaderForge.SFN_Multiply,id:2528,x:30511,y:31705,varname:node_2528,prsc:2|A-848-TSL,B-1509-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1509,x:30260,y:31705,ptovrint:False,ptlb:node_1509,ptin:_node_1509,varname:_node_1509,prsc:0,glob:False,taghide:True,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.2;n:type:ShaderForge.SFN_ComponentMask,id:7887,x:30937,y:32140,varname:node_7887,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-166-UVOUT;n:type:ShaderForge.SFN_Append,id:1047,x:31173,y:32230,varname:node_1047,prsc:2|A-7887-OUT,B-6152-V;n:type:ShaderForge.SFN_Add,id:4277,x:31878,y:32338,varname:node_4277,prsc:2|A-785-R,B-208-R,C-4929-R,D-1818-R,E-8125-R;n:type:ShaderForge.SFN_Divide,id:355,x:32023,y:32404,varname:node_355,prsc:2|A-4277-OUT,B-1738-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1738,x:31855,y:32491,ptovrint:False,ptlb:node_1738,ptin:_node_1738,varname:_node_1738,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_ComponentMask,id:3081,x:30911,y:32729,varname:node_3081,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-2678-UVOUT;n:type:ShaderForge.SFN_Append,id:4803,x:31069,y:32777,varname:node_4803,prsc:2|A-6152-U,B-3081-OUT;n:type:ShaderForge.SFN_Panner,id:2678,x:30722,y:32419,varname:node_2678,prsc:0,spu:1,spv:1|UVIN-1135-OUT,DIST-2528-OUT;n:type:ShaderForge.SFN_Multiply,id:1135,x:30494,y:32459,varname:node_1135,prsc:2|A-6152-UVOUT,B-9689-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9689,x:30223,y:32525,ptovrint:False,ptlb:Pattern Size_copy,ptin:_PatternSize_copy,varname:_PatternSize_copy,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Tex2d,id:4929,x:31427,y:32768,varname:_node_9881,prsc:0,tex:79936a2c08f06d34fa7f9fe82762216b,ntxv:0,isnm:False|UVIN-4803-OUT,TEX-1670-TEX;n:type:ShaderForge.SFN_Tex2d,id:1818,x:31646,y:32815,varname:_node_3239,prsc:0,tex:79936a2c08f06d34fa7f9fe82762216b,ntxv:0,isnm:False|UVIN-3655-OUT,TEX-1670-TEX;n:type:ShaderForge.SFN_OneMinus,id:3655,x:31218,y:32750,varname:node_3655,prsc:2|IN-4803-OUT;n:type:ShaderForge.SFN_Tex2d,id:8125,x:31646,y:32552,varname:_node_9167,prsc:0,tex:79936a2c08f06d34fa7f9fe82762216b,ntxv:0,isnm:False|UVIN-5629-OUT,TEX-1670-TEX;n:type:ShaderForge.SFN_OneMinus,id:5629,x:31090,y:32456,varname:node_5629,prsc:2|IN-4166-UVOUT;proporder:3541-8457-1670-1509-1738-9689;pass:END;sub:END;*/

Shader "PS Vita/Fog" {
    Properties {
        _PatternSize ("Pattern Size", Float ) = 0.5
        _Speed ("Speed", Float ) = 0.1
        _Pattern ("Pattern", 2D) = "white" {}
        [HideInInspector]_node_1509 ("node_1509", Float ) = 0.2
        _node_1738 ("node_1738", Float ) = 5
        _PatternSize_copy ("Pattern Size_copy", Float ) = 2
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
            "PreviewType"="Plane"
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
            uniform fixed _PatternSize;
            uniform fixed _Speed;
            uniform sampler2D _Pattern; uniform float4 _Pattern_ST;
            uniform fixed _node_1509;
            uniform float _node_1738;
            uniform fixed _PatternSize_copy;
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
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 node_848 = _Time;
                float2 node_1047 = float2((i.uv0+(node_848.r*_Speed)*float2(1,1)).r,i.uv0.g);
                fixed4 _Patter = tex2D(_Pattern,TRANSFORM_TEX(node_1047, _Pattern));
                float node_2528 = (node_848.r*_node_1509);
                fixed2 node_4166 = ((i.uv0*_PatternSize)+node_2528*float2(1,1));
                fixed4 _node_3396 = tex2D(_Pattern,TRANSFORM_TEX(node_4166, _Pattern));
                float2 node_4803 = float2(i.uv0.r,((i.uv0*_PatternSize_copy)+node_2528*float2(1,1)).g);
                fixed4 _node_9881 = tex2D(_Pattern,TRANSFORM_TEX(node_4803, _Pattern));
                float2 node_3655 = (1.0 - node_4803);
                fixed4 _node_3239 = tex2D(_Pattern,TRANSFORM_TEX(node_3655, _Pattern));
                float2 node_5629 = (1.0 - node_4166);
                fixed4 _node_9167 = tex2D(_Pattern,TRANSFORM_TEX(node_5629, _Pattern));
                float node_355 = ((_Patter.r+_node_3396.r+_node_9881.r+_node_3239.r+_node_9167.r)/_node_1738);
                float3 emissive = float3(node_355,node_355,node_355);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,node_355);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
