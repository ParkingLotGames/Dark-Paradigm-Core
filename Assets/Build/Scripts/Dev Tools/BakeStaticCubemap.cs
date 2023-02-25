﻿#if UNITY_EDITOR
/*
* This confidential and proprietary software may be used only as
* authorised by a licensing agreement from ARM Limited
* (C) COPYRIGHT 2014 ARM Limited
* ALL RIGHTS RESERVED
* The entire notice above must be reproduced on all authorised
* copies and copies may only be made to the extent permitted
* by a licensing agreement from ARM Limited.
*/

using UnityEngine;
using UnityEditor;
using System.IO;

/**
* This script must be placed in the Editor folder.
* The script renders the scene into a cubemap and optionally
* saves each cubemap image individually.
* The script is available in the Editor mode from the 
 * Game Object menu as "Bake Cubemap" option.
* Be sure the camera far plane is enough to render the scene.
*/

/// <summary>
/// ScriptableWizard for baking a static cubemap.
/// </summary>
public class BakeStaticCubemap : ScriptableWizard
{
    /// <summary>
    /// The transform representing the position to render from.
    /// </summary>
    public Transform renderPosition;

    /// <summary>
    /// The cubemap to bake.
    /// </summary>
    public Cubemap cubemap;

    // Camera settings.
    public int cameraDepth = 24;
    public LayerMask cameraLayerMask = -1;
    public Color cameraBackgroundColor;
    public float cameraNearPlane = 0.1f;
    public float cameraFarPlane = 2500.0f;
    public bool cameraUseOcclusion = true;

    // Cubemap settings.
    public FilterMode cubemapFilterMode = FilterMode.Trilinear;

    // Quality settings.
    public int antiAliasing = 4;

    public bool createIndividualImages = false;

    Camera goC;

    // The folder where individual cubemap images will be saved
    static string imageDirectory = "Assets/CubemapImages";

    static string[] cubemapImage
        = new string[] { "front+Z", "right+X", "back-Z", "left-X", "top+Y", "bottom-Y" };

    static Vector3[] eulerAngles = new Vector3[] {
        new Vector3(0.0f, 0.0f, 0.0f),
        new Vector3(0.0f, -90.0f, 0.0f),
        new Vector3(0.0f, 180.0f, 0.0f),
        new Vector3(0.0f, 90.0f, 0.0f),
        new Vector3(-90.0f, 0.0f, 0.0f),
        new Vector3(90.0f, 0.0f, 0.0f)
    };

    /// <summary>
    /// Validates the input parameters.
    /// </summary>
    void OnWizardUpdate()
    {
        helpString = "Set the position to render from and the cubemap to bake.";
        if (renderPosition != null && cubemap != null)
        {
            isValid = true;
        }
        else
        {
            isValid = false;
        }
    }

    /// <summary>
    /// Bakes the cubemap using the input parameters.
    /// </summary>
    void OnWizardCreate()
    {
        // Create temporary camera for rendering.
        GameObject go = new GameObject("CubemapCam", typeof(Camera));

        // Camera settings.
        goC = go.GetComponent<Camera>();
        goC.depth = cameraDepth;
        goC.backgroundColor = cameraBackgroundColor;
        goC.cullingMask = cameraLayerMask;
        goC.nearClipPlane = cameraNearPlane;
        goC.farClipPlane = cameraFarPlane;
        goC.useOcclusionCulling = cameraUseOcclusion;

        // Cubemap settings.
        cubemap.filterMode = cubemapFilterMode;

        // Set antialiasing.
        QualitySettings.antiAliasing = antiAliasing;

        // Place the camera on the render position.
        go.transform.position = renderPosition.position;
        go.transform.rotation = Quaternion.identity;

        // Bake the cubemap.
        goC.RenderToCubemap(cubemap);

        // Rendering individual images.
        if (createIndividualImages)
        {
            if (!Directory.Exists(imageDirectory))
            {
                Directory.CreateDirectory(imageDirectory);
            }

            RenderIndividualCubemapImages(go);
            // Destroy the camera after rendering.
            DestroyImmediate(go);
        }
    }

    /// <summary>
    /// Renders individual cubemap images and saves them to file.
    /// </summary>
    /// <param name="go">The camera game object to use for rendering.</param>
    void RenderIndividualCubemapImages(GameObject go)
    {
        goC.backgroundColor = Color.black;
        goC.clearFlags = CameraClearFlags.Skybox;
        goC.fieldOfView = 90;
        goC.aspect = 1.0f;

        go.transform.rotation = Quaternion.identity;

        // Render individual images.
        for (int camOrientation = 0; camOrientation < eulerAngles.Length; camOrientation++)
        {
            string imageName = Path.Combine(imageDirectory, cubemap.name + "_" + cubemapImage[camOrientation] + ".png");
            goC.transform.eulerAngles = eulerAngles[camOrientation];
            RenderTexture renderTex = new RenderTexture(cubemap.height, cubemap.height, cameraDepth);
            goC.targetTexture = renderTex;
            goC.Render();
            RenderTexture.active = renderTex;

            Texture2D img = new Texture2D(cubemap.height, cubemap.height, TextureFormat.RGB24, false);
            img.ReadPixels(new Rect(0, 0, cubemap.height, cubemap.height), 0, 0);

            RenderTexture.active = null;
            GameObject.DestroyImmediate(renderTex);

            byte[] imgBytes = img.EncodeToPNG();
            File.WriteAllBytes(imageName, imgBytes);

            AssetDatabase.ImportAsset(imageName, ImportAssetOptions.ForceUpdate);
        }

        AssetDatabase.Refresh();
    }

    /// <summary>
    /// Displays the "Bake Cubemap" wizard menu item.
    /// </summary>
    [MenuItem("GameObject/Bake Cubemap")]
    static void RenderCubemap()
    {
        ScriptableWizard.DisplayWizard("Bake CubeMap", typeof(BakeStaticCubemap), "Bake!");
    }
}
#endif