#version 150

#moj_import <fog.glsl>

uniform vec4 ColorModulator;
uniform float FogStart;
uniform float FogEnd;
uniform vec4 FogColor;
uniform float GameTime;
// 全局量:时间 游戏中每经过1天(1200秒)加1

in float vertexDistance;
in vec4 vertexColor;
in vec3 pos;

out vec4 fragColor;

void main() {
    vec4 color = vertexColor * ColorModulator;
    
    if(color.a!=1){
    // 该着色器所控制的内容中, 只有“玩家瞄准线”的透明度不为1
        float t0 = GameTime * 1200 + pos.x + pos.y + pos.z;
        // 每经过1秒加1                    参入位置信息
        float t1 = t0 + 2.094395102366;
        float t2 = t0 + 4.188790204733;
        // 分别增加 2pi * 1/3 和 2pi * 2/3 使其分别在弧度周期中的三等分位置
        color = vec4(sin(t0) / 20 + 1, sin(t1) / 20 + 0.75, sin(t2) / 20 + 0.75, 1);
        // 输入时间, 得到对应颜色, 用三角函数是因为它有周期性而且很平滑
    };

    fragColor = linear_fog(color, vertexDistance, FogStart, FogEnd, FogColor);
}


