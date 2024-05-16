#include <Packages/com.blendernodesgraph.core/Editor/Includes/Importers.hlsl>

void Diding_dalam_luar_float(float3 _POS, float3 _PVS, float3 _PWS, float3 _NOS, float3 _NVS, float3 _NWS, float3 _NTS, float3 _TWS, float3 _BTWS, float3 _UV, float3 _SP, float3 _VVS, float3 _VWS, float2 name, Texture2D image_34132, Texture2D image_34136, Texture2D image_34134, Texture2D image_34130, out float4 Color, out float3 Normal, out float Smoothness, out float4 Emission, out float AmbientOcculusion, out float Metallic, out float4 Specular)
{
	
	float4 _ImageTexture_34130 = node_image_texture(image_34130, name, 0);
	float4 _HueSaturationValue_34126 = hue_sat(0, 0, 0, 1, _ImageTexture_34130);
	float4 _ImageTexture_34136 = node_image_texture(image_34136, name, 0);
	float4 _NormalMap_34122; node_normal_map(_ImageTexture_34136, 2, _NormalMap_34122);
	float4 _ImageTexture_34132 = node_image_texture(image_34132, name, 0);
	float4 _ImageTexture_34134 = node_image_texture(image_34134, name, 0);

	Color = _HueSaturationValue_34126;
	Normal = _NormalMap_34122;
	Smoothness = _ImageTexture_34132;
	Emission = float4(0.0, 0.0, 0.0, 0.0);
	AmbientOcculusion = 0.0;
	Metallic = 0.0;
	Specular = _ImageTexture_34134;
}