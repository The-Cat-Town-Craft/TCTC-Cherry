# TCTC Cherry — Release Notes

**Dev build · 2026-10-20**

## Highlights

- The animated cherry-pink selection box is back on 26.1 and newer (pack format 81+, including 26.2).

## Details

- The block outline is recolored to a slowly breathing cherry pink (`(1.0, 0.75, 0.75) ± 5%`), with a phase offset based on block position so neighbouring blocks shimmer slightly out of sync.
- Only lines with an alpha other than 1 are affected — in vanilla that is the block outline; the debug crosshair and hitboxes stay unchanged.
- Implemented as a `rendertype_lines` core shader, rewritten for the 26.1+ shader format.

| Pack format | Selection box recolor |
|---|---|
| 16 – 23 | Yes |
| 24 – 32 | Yes |
| 33 – 80 | No |
| 81+ | Yes |

With a shaderpack that provides its own line program (e.g. Complementary's `gbuffers_line`), the outline is drawn by the pack and the recolour will not show until shaders are turned off.
