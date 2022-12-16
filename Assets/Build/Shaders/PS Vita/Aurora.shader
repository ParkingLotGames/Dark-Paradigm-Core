// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:False,nrmq:0,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:False,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:986,x:33409,y:32617,varname:node_986,prsc:2|emission-1082-OUT,voffset-6257-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:1635,x:30920,y:32965,ptovrint:True,ptlb:Main Mask R Vertex Offset G Main Shape B Indentations A Sec Indentations,ptin:_Mask,varname:_Mask,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:f06709e1b293a5b429206e4612af600f,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:3323,x:31672,y:33600,varname:node_3323,prsc:0,tex:f06709e1b293a5b429206e4612af600f,ntxv:0,isnm:False|UVIN-1150-OUT,TEX-1635-TEX;n:type:ShaderForge.SFN_Multiply,id:9290,x:32319,y:33072,varname:node_9290,prsc:2|A-3323-R,B-5791-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5791,x:32125,y:33188,ptovrint:False,ptlb:Vertex Offset Amount,ptin:_VertexOffsetAmount,varname:_VertexOffsetAmount,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_Append,id:6257,x:32553,y:33072,varname:node_6257,prsc:2|A-5526-OUT,B-9290-OUT;n:type:ShaderForge.SFN_Vector1,id:5526,x:32553,y:33226,varname:node_5526,prsc:2,v1:0;n:type:ShaderForge.SFN_TexCoord,id:6139,x:30920,y:32596,varname:node_6139,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ValueProperty,id:1700,x:30862,y:33361,ptovrint:False,ptlb:Vertex Offset Speed,ptin:_VertexOffsetSpeed,varname:_VertexOffsetSpeed,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_ValueProperty,id:9583,x:30862,y:33450,ptovrint:False,ptlb:VO_SPD_V,ptin:_VO_SPD_V,varname:_VO_SPD_V,prsc:0,glob:False,taghide:True,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Append,id:2625,x:31032,y:33361,varname:node_2625,prsc:2|A-1700-OUT,B-9583-OUT;n:type:ShaderForge.SFN_Time,id:6735,x:30920,y:32745,varname:node_6735,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3010,x:31207,y:33361,varname:node_3010,prsc:2|A-2625-OUT,B-6735-T;n:type:ShaderForge.SFN_Add,id:6650,x:31380,y:33361,varname:node_6650,prsc:2|A-3010-OUT,B-6139-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:4141,x:31526,y:32928,varname:node_4141,prsc:0,tex:f06709e1b293a5b429206e4612af600f,ntxv:0,isnm:False|TEX-1635-TEX;n:type:ShaderForge.SFN_ValueProperty,id:3801,x:30775,y:32393,ptovrint:False,ptlb:Indentations Speed,ptin:_IndentationsSpeed,varname:_IndentationsSpeed,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_ValueProperty,id:8433,x:30760,y:32529,ptovrint:False,ptlb:Indentations_SPD_V,ptin:_Indentations_SPD_V,varname:_Indentations_SPD_V,prsc:0,glob:False,taghide:True,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Append,id:5918,x:31060,y:32402,varname:node_5918,prsc:2|A-3801-OUT,B-8433-OUT;n:type:ShaderForge.SFN_Multiply,id:7084,x:31235,y:32402,varname:node_7084,prsc:2|A-5918-OUT,B-6735-T;n:type:ShaderForge.SFN_Add,id:4935,x:31408,y:32402,varname:node_4935,prsc:2|A-7084-OUT,B-6139-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:9292,x:31526,y:32775,varname:node_9292,prsc:0,tex:f06709e1b293a5b429206e4612af600f,ntxv:0,isnm:False|UVIN-3595-OUT,TEX-1635-TEX;n:type:ShaderForge.SFN_Add,id:2435,x:31923,y:32783,varname:node_2435,prsc:2|A-678-OUT,B-9292-B;n:type:ShaderForge.SFN_ValueProperty,id:678,x:31923,y:32683,ptovrint:False,ptlb:Indentations Add Intensity,ptin:_IndentationsAddIntensity,varname:_IndentationsAddIntensity,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_ValueProperty,id:2718,x:30879,y:31881,ptovrint:False,ptlb:Secondary Indentantions Speed,ptin:_SecondaryIndentantionsSpeed,varname:_SecondaryIndentantionsSpeed,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_ValueProperty,id:1658,x:30879,y:31970,ptovrint:False,ptlb:Lines_SPD_V,ptin:_Lines_SPD_V,varname:_Lines_SPD_V,prsc:0,glob:False,taghide:True,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Append,id:5780,x:31049,y:31881,varname:node_5780,prsc:2|A-2718-OUT,B-1658-OUT;n:type:ShaderForge.SFN_Multiply,id:8368,x:31224,y:31881,varname:node_8368,prsc:2|A-5780-OUT,B-6735-T;n:type:ShaderForge.SFN_Add,id:5532,x:31422,y:31908,varname:node_5532,prsc:2|A-8368-OUT,B-6139-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:6627,x:31526,y:32601,varname:node_6627,prsc:0,tex:f06709e1b293a5b429206e4612af600f,ntxv:0,isnm:False|UVIN-7944-OUT,TEX-1635-TEX;n:type:ShaderForge.SFN_Add,id:8331,x:32248,y:32523,varname:node_8331,prsc:2|A-7152-OUT,B-2435-OUT;n:type:ShaderForge.SFN_Multiply,id:8710,x:32583,y:32774,varname:node_8710,prsc:0|A-8331-OUT,B-4141-G;n:type:ShaderForge.SFN_Multiply,id:7152,x:32005,y:32451,varname:node_7152,prsc:2|A-6460-OUT,B-6627-A;n:type:ShaderForge.SFN_ValueProperty,id:6460,x:31751,y:32361,ptovrint:False,ptlb:Secondary Indentantions Strength,ptin:_SecondaryIndentantionsStrength,varname:_SecondaryIndentantionsStrength,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_ValueProperty,id:4432,x:31044,y:31681,ptovrint:False,ptlb:Secondary Indentations Tiling U,ptin:_SecondaryIndentationsTilingU,varname:_SecondaryIndentationsTilingU,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:4;n:type:ShaderForge.SFN_ValueProperty,id:346,x:31044,y:31779,ptovrint:False,ptlb:Lines_Tile_V,ptin:_Lines_Tile_V,varname:_Lines_Tile_V,prsc:0,glob:False,taghide:True,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Append,id:7044,x:31250,y:31714,varname:node_7044,prsc:2|A-4432-OUT,B-346-OUT;n:type:ShaderForge.SFN_Multiply,id:7944,x:31422,y:31740,varname:node_7944,prsc:0|A-7044-OUT,B-5532-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4220,x:30775,y:32149,ptovrint:False,ptlb:indentations Tiling U,ptin:_indentationsTilingU,varname:_indentationsTilingU,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;n:type:ShaderForge.SFN_ValueProperty,id:2601,x:30775,y:32275,ptovrint:False,ptlb:Indentations_Tile_V,ptin:_Indentations_Tile_V,varname:_Indentations_Tile_V,prsc:0,glob:False,taghide:True,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Append,id:9138,x:31065,y:32152,varname:node_9138,prsc:2|A-4220-OUT,B-2601-OUT;n:type:ShaderForge.SFN_Multiply,id:3595,x:31261,y:32152,varname:node_3595,prsc:0|A-9138-OUT,B-4935-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9077,x:31147,y:33600,ptovrint:False,ptlb:Vertex Offset Tiling U,ptin:_VertexOffsetTilingU,varname:_VertexOffsetTilingU,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:22,x:31147,y:33759,ptovrint:False,ptlb:VO_Tile_V,ptin:_VO_Tile_V,varname:_VO_Tile_V,prsc:0,glob:False,taghide:True,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Append,id:9985,x:31336,y:33600,varname:node_9985,prsc:2|A-9077-OUT,B-22-OUT;n:type:ShaderForge.SFN_Multiply,id:1150,x:31505,y:33600,varname:node_1150,prsc:0|A-6650-OUT,B-9985-OUT;n:type:ShaderForge.SFN_Lerp,id:4688,x:32804,y:32258,varname:node_4688,prsc:2|A-6883-RGB,B-5465-RGB,T-2194-OUT;n:type:ShaderForge.SFN_Slider,id:98,x:32248,y:32399,ptovrint:False,ptlb:Color Blend,ptin:_ColorBlend,varname:_ColorBlend,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:2;n:type:ShaderForge.SFN_Multiply,id:2194,x:32668,y:32475,varname:node_2194,prsc:2|A-98-OUT,B-8710-OUT;n:type:ShaderForge.SFN_Color,id:6883,x:32527,y:31976,ptovrint:False,ptlb:Main Color,ptin:_MainColor,varname:_MainColor,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5284529,c2:1,c3:0.01568627,c4:1;n:type:ShaderForge.SFN_Color,id:5465,x:32527,y:32193,ptovrint:False,ptlb:Glow Color,ptin:_GlowColor,varname:_GlowColor,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8574624,c2:1,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:4190,x:33016,y:32677,varname:node_4190,prsc:2|A-4688-OUT,B-8710-OUT;n:type:ShaderForge.SFN_Multiply,id:1082,x:33201,y:32700,varname:node_1082,prsc:2|A-4190-OUT,B-8159-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8159,x:33014,y:32933,ptovrint:False,ptlb:Glow Strength,ptin:_GlowStrength,varname:_GlowStrength,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1.5;proporder:1635-5791-1700-9583-3801-8433-678-2718-1658-6460-4432-346-4220-2601-9077-22-98-6883-5465-8159;pass:END;sub:END;*/

Shader "PS Vita/Aurora" {
    Properties {
        _Mask ("Main Mask R Vertex Offset G Main Shape B Indentations A Sec Indentations", 2D) = "white" {}
        _VertexOffsetAmount ("Vertex Offset Amount", Float ) = 0.1
        _VertexOffsetSpeed ("Vertex Offset Speed", Float ) = 0.1
        [HideInInspector]_VO_SPD_V ("VO_SPD_V", Float ) = 0
        _IndentationsSpeed ("Indentations Speed", Float ) = 0.1
        [HideInInspector]_Indentations_SPD_V ("Indentations_SPD_V", Float ) = 0
        _IndentationsAddIntensity ("Indentations Add Intensity", Float ) = 0.5
        _SecondaryIndentantionsSpeed ("Secondary Indentantions Speed", Float ) = 0.1
        [HideInInspector]_Lines_SPD_V ("Lines_SPD_V", Float ) = 0
        _SecondaryIndentantionsStrength ("Secondary Indentantions Strength", Float ) = 2
        _SecondaryIndentationsTilingU ("Secondary Indentations Tiling U", Float ) = 4
        [HideInInspector]_Lines_Tile_V ("Lines_Tile_V", Float ) = 1
        _indentationsTilingU ("indentations Tiling U", Float ) = 3
        [HideInInspector]_Indentations_Tile_V ("Indentations_Tile_V", Float ) = 1
        _VertexOffsetTilingU ("Vertex Offset Tiling U", Float ) = 0
        [HideInInspector]_VO_Tile_V ("VO_Tile_V", Float ) = 0
        _ColorBlend ("Color Blend", Range(0, 2)) = 1
        _MainColor ("Main Color", Color) = (0.5284529,1,0.01568627,1)
        _GlowColor ("Glow Color", Color) = (0.8574624,1,0,1)
        _GlowStrength ("Glow Strength", Float ) = 1.5
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
            Blend One One
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles psp2 
            #pragma target 3.0
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform fixed _VertexOffsetAmount;
            uniform fixed _VertexOffsetSpeed;
            uniform fixed _VO_SPD_V;
            uniform fixed _IndentationsSpeed;
            uniform fixed _Indentations_SPD_V;
            uniform fixed _IndentationsAddIntensity;
            uniform fixed _SecondaryIndentantionsSpeed;
            uniform fixed _Lines_SPD_V;
            uniform fixed _SecondaryIndentantionsStrength;
            uniform fixed _SecondaryIndentationsTilingU;
            uniform fixed _Lines_Tile_V;
            uniform fixed _indentationsTilingU;
            uniform fixed _Indentations_Tile_V;
            uniform fixed _VertexOffsetTilingU;
            uniform fixed _VO_Tile_V;
            uniform fixed _ColorBlend;
            uniform fixed4 _MainColor;
            uniform fixed4 _GlowColor;
            uniform fixed _GlowStrength;
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
                float4 node_6735 = _Time;
                fixed2 node_1150 = (((float2(_VertexOffsetSpeed,_VO_SPD_V)*node_6735.g)+o.uv0)*float2(_VertexOffsetTilingU,_VO_Tile_V));
                fixed4 node_3323 = tex2Dlod(_Mask,float4(TRANSFORM_TEX(node_1150, _Mask),0.0,0));
                v.vertex.xyz += float3(float2(0.0,(node_3323.r*_VertexOffsetAmount)),0.0);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
////// Lighting:
////// Emissive:
                float4 node_6735 = _Time;
                fixed2 node_7944 = (float2(_SecondaryIndentationsTilingU,_Lines_Tile_V)*((float2(_SecondaryIndentantionsSpeed,_Lines_SPD_V)*node_6735.g)+i.uv0));
                fixed4 node_6627 = tex2D(_Mask,TRANSFORM_TEX(node_7944, _Mask));
                fixed2 node_3595 = (float2(_indentationsTilingU,_Indentations_Tile_V)*((float2(_IndentationsSpeed,_Indentations_SPD_V)*node_6735.g)+i.uv0));
                fixed4 node_9292 = tex2D(_Mask,TRANSFORM_TEX(node_3595, _Mask));
                fixed4 node_4141 = tex2D(_Mask,TRANSFORM_TEX(i.uv0, _Mask));
                fixed node_8710 = (((_SecondaryIndentantionsStrength*node_6627.a)+(_IndentationsAddIntensity+node_9292.b))*node_4141.g);
                float3 emissive = ((lerp(_MainColor.rgb,_GlowColor.rgb,(_ColorBlend*node_8710))*node_8710)*_GlowStrength);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
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
            #pragma only_renderers d3d9 d3d11 glcore gles psp2 
            #pragma target 3.0
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform fixed _VertexOffsetAmount;
            uniform fixed _VertexOffsetSpeed;
            uniform fixed _VO_SPD_V;
            uniform fixed _VertexOffsetTilingU;
            uniform fixed _VO_Tile_V;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4 node_6735 = _Time;
                fixed2 node_1150 = (((float2(_VertexOffsetSpeed,_VO_SPD_V)*node_6735.g)+o.uv0)*float2(_VertexOffsetTilingU,_VO_Tile_V));
                fixed4 node_3323 = tex2Dlod(_Mask,float4(TRANSFORM_TEX(node_1150, _Mask),0.0,0));
                v.vertex.xyz += float3(float2(0.0,(node_3323.r*_VertexOffsetAmount)),0.0);
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
