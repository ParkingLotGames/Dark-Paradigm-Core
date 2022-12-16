Shader "PS Vita/FX/Light Cone"
{
	Properties{
		[HDR]_TintColor("Color", Color) = (1,1,1,1)
		_FadeRange("Fade Range", range(0,1)) = -0.5
		_FadeFactor("Fade Factor", range(0,10)) = 1
	}
    SubShader
    {
		 Tags {
			"IgnoreProjector" = "True"
			"Queue" = "Transparent"
			"RenderType" = "Transparent"
		}

        Pass
        {
            blend SrcAlpha OneMinusSrcAlpha
			Cull Off
			ZWrite Off

            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag

            #include "UnityCG.cginc"

            struct appdata
            {
                fixed4 vertex : POSITION;
                fixed3 normal :NORMAL;
            };

            struct v2f
            {
                fixed4 vertex : SV_POSITION;
                fixed3 worldNormal : TEXCOORD0;
				fixed3 worldPos : TEXCOORD1;
                fixed modelPosZ : TEXCOORD2;
            };

			fixed4 _TintColor;
			fixed _FadeRange;
			fixed _FadeFactor;

            v2f vert (appdata v)
            {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
                o.worldNormal = UnityObjectToWorldNormal(v.normal);
				o.worldPos = mul(unity_ObjectToWorld, v.vertex);
                o.modelPosZ = v.vertex.z;

                return o;
            }

            fixed4 frag (v2f i) : SV_Target
            {
                fixed4 col = _TintColor;

                //Blurred edge
				fixed3 viewDir = normalize(UnityWorldSpaceViewDir(i.worldPos));
				fixed3 worldNormal = normalize(i.worldNormal);
				col.a *= abs(dot(viewDir, worldNormal));
                
				//The bottom is blurred (the coordinates here are related to the specific model coordinates to give a suitable value)
				if (i.modelPosZ < _FadeRange) {
					col.a = lerp(col.a, 0, saturate(abs(i.modelPosZ - _FadeRange) * _FadeFactor));
				}

                return col;
            }
            ENDCG
        }
    }
}

