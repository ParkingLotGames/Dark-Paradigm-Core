using UnityEngine;

namespace DP.PostProcessing
{
    [ExecuteInEditMode]
	public class UnderwaterCameraFX : MonoBehaviour 
	{

        [SerializeField] Material underwaterFx;

        private void OnRenderImage(RenderTexture source, RenderTexture destination)
        {
            Graphics.Blit(source, destination, underwaterFx);
        }

    }
}