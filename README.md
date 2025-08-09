<h1 align = "center">樱喵红显</h1>
<h3 align = "center">TCTC Cherry</h3>

<div align="center"><img src="Featured_img.png" /></div>

## Introduction / 介绍

简体中文

本纹理包为红石显示资源包，含有部分非红显内容。

目前兼容的游戏版本：1.16-1.21.8

English

This pack is a redstone display resource pack, also has some non-redstone display content.

Currently compatible game versions: 1.16-1.21.8

### Main Changes / 主要修改内容

简体中文

- 红石元件主颜色为樱粉色
- 自发光贴图：
    - 标准一：LabPBR标准，推荐配合 [Complementary r5.3+](https://modrinth.com/shader/complementary-reimagined/version/latest) 光影（+[Euphoria Patches 1.4.1+](https://www.euphoriapatches.com/how-to-install/)），将集成PBR+自发光模式设置为 labPBR > IPBR+;
    - 标准二：OptiFine 使用的 _e 纹理（仅在 1.16-24w37a 可用）
    - 标准三：原版 light_emission 模型字段（在 24w37a 后可用，因功能限制，制作繁琐等原因，目前只完成了一部分方块）

English

- Accent color of the redstone component is cherry blossom.
- Emissive Textures: 
    - Standard 1: labPBR, it is recommended to use With [Complementary r5.3+ Shader](https://modrinth.com/shader/complementary-reimagined/version/latest) (+[Euphoria Patches 1.4.1+](https://www.euphoriapatches.com/how-to-install/), and set the integrated PBR+ emission mode to labPBR > IPBR+
    - Standard 2: OptiFine emission textures (Available only in 1.16-24w37a)
    - Standard 3: Vanilla light_emission models (Available after 24w37a, due to functional limitations, cumbersome production, etc., only a part of the blocks have been completed so far)

## Mod Requirement / 模组需求

发光纹理使用含 LabPBR 支持的光影，在不开启光影的情况下需要 [OptiFine](https://www.optifine.net/downloads) 或 [MoreMcmeta](https://modrinth.com/mod/moremcmeta) + [MoreMcmeta Emissive Textures](https://modrinth.com/mod/moremcmeta-emissive) 模组.

Emissive textures require use shaders with LabPBR support, _e textures require [OptiFine](https://www.optifine.net/downloads) or [MoreMcmeta](https://modrinth.com/mod/moremcmeta) + [MoreMcmeta Emissive Textures](https://modrinth.com/mod/moremcmeta-emissive) mods.

### Known issues / 已知问题

- 在 Minecraft 1.20+ 版本中较新版本的 Sodium 会导致发光纹理和基础纹理产生[深度冲突](https://github.com/PepperCode1/Continuity/issues/292)，如果不想看见深度冲突，可以在 Continuity 的模组设置里把发光纹理（_e 纹理）选项关闭；
- 猫爪附加包中的轻重质压力板能量等级显示不兼容原版渲染；

- In Minecraft 1.20+, the newer versions of Sodium will cause [Z-fighting](https://github.com/PepperCode1/Continuity/issues/292) between the emission texture and the base texture, If you do not want to see Z-fighting, You can turn off the emissive texture (_e texture) option in Continuity's mod settings;
- Meow add-on's light and heavy pressure plate power level display do not compatible with vanilla render;

## LICENSES / 许可协议

简体中文：[CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/deed.zh)

English: [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/deed.en)

## Credits / 致谢

简体中文

- Xekr：系列材质教程让我受益匪浅，也参考了不少他的红显资源包创作方法。Xekr：[BiliBili](https://space.bilibili.com/5930630)

- Hendrix_Shen: 模组支持

- Capt Tastu：感谢他的创意授权

- 药水棒冰：感谢他的创意授权

- 南烛：材质创作指导

- 火昱Huoyu：选择框改色原版着色器实现授权

- GeForceLegend：许多指导和协助定位解决问题

English

- Xekr: series of texture pack teaching videos have benefited me a lot, inspired by his redstone display resourcepack.
- Hendrix_Shen: mod support
- Capt Tastu: Thanks for his generous authorization
- YSBB: Thanks for his generous authorization
- Nan2uu: creation guidance
- Huoyu：selection box color shader implementation authorization
- GeForceLegend：Lots of guidance and problem solving
