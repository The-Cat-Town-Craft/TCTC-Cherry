#version 330

#moj_import <minecraft:fog.glsl>
#moj_import <minecraft:dynamictransforms.glsl>
#moj_import <minecraft:globals.glsl>

// 26.1 snapshot 7+ (pack_format >= 81)
// GameTime 位于 Globals 中, 单位为“天”(0.0~1.0), 故 *1200 换算为秒;
// 迷雾改用 apply_fog(球面距离, 柱面距离, ...).

in float sphericalVertexDistance;
in float cylindricalVertexDistance;
in vec4 vertexColor;
in vec3 pos;

out vec4 fragColor;

void main() {
    vec4 color = vertexColor * ColorModulator;

    if (color.a != 1.0) {
        // 该着色器所控制的内容中, 只有“方块选择框”的透明度不为1 (ARGB.black(102))
        // 调试准星等线条为不透明黑/红, 不会被改成粉色
        float t0 = GameTime * 1200.0 + pos.x + pos.y + pos.z;
        // 每经过1秒加1                    参入位置信息
        float t1 = t0 + 2.094395102366;
        float t2 = t0 + 4.188790204733;
        // 分别增加 2pi * 1/3 和 2pi * 2/3 使其分别在弧度周期中的三等分位置
        color = vec4(sin(t0) / 20.0 + 1.0, sin(t1) / 20.0 + 0.75, sin(t2) / 20.0 + 0.75, 1.0);
        // 输入时间, 得到对应颜色, 用三角函数是因为它有周期性而且很平滑
    }

    fragColor = apply_fog(color, sphericalVertexDistance, cylindricalVertexDistance, FogEnvironmentalStart, FogEnvironmentalEnd, FogRenderDistanceStart, FogRenderDistanceEnd, FogColor);
}
