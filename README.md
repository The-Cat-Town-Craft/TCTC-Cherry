<h1 align = "center">TCTC Cherry</h1>
<h3 align = "center">Cherry Redstone Display</h3>

<div align="center"><img src="Featured_img.png" /></div>

**English** | [简体中文](README.zh-CN.md)

## Introduction

A redstone display resource pack, with some non-redstone content as well.

Supported game versions: 1.16–26.2

### Main Changes

- Redstone components are recolored in cherry blossom pink.
- Emissive textures:
    - **Standard 1 (labPBR):** Best used with [Complementary r5.3+](https://modrinth.com/shader/complementary-reimagined/version/latest) (+ [Euphoria Patches 1.4.1+](https://www.euphoriapatches.com/how-to-install/)); set the Integrated PBR+ emission mode to labPBR > IPBR+.
    - **Standard 2 (OptiFine `_e`):** Emissive textures using the OptiFine `_e` convention — available only in 1.16–24w37a.
    - **Standard 3 (vanilla `light_emission`):** Emissive geometry driven by the vanilla `light_emission` model field — available since 24w37a. Because of format limitations and the amount of manual work involved, only some blocks are covered so far.

## Mod Requirements

The labPBR emissive textures need a shader with labPBR support. Without shaders, the `_e` variants need [OptiFine](https://www.optifine.net/downloads) or the [MoreMcmeta](https://modrinth.com/mod/moremcmeta) + [MoreMcmeta Emissive Textures](https://modrinth.com/mod/moremcmeta-emissive) mods.

## License

[CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/deed.en)

## Credits

- Xekr — his texture-pack tutorial series taught me a great deal and inspired how I build redstone display packs. ([BiliBili](https://space.bilibili.com/5930630))
- Hendrix_Shen — mod support.
- Capt Tastu — for generously allowing the use of their creations.
- YSBB — for generously allowing the use of their creations.
- Nan2uu — creative guidance.
- Huoyu — for the vanilla-shader implementation used for the selection box recolor.
- GeForceLegend — extensive guidance and troubleshooting help.
- wellcoming — fixed the PBR texture issues.
