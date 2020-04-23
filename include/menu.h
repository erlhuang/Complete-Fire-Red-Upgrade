#pragma once

#include "global.h"

#include "text.h"
#include "window.h"

struct MenuAction
{
    const u8 *text;
    union {
        void (*void_u8)(u8);
        u8 (*u8_void)(void);
    } func;
};

struct MoveMenuInfoIcon
{
    u8 width;
    u8 height;
    u16 offset;
};

void __attribute__((long_call)) clear_scheduled_bg_copies_to_vram(void);
void __attribute__((long_call)) ResetAllPicSprites(void);
int __attribute__((long_call)) decompress_and_copy_tile_data_to_vram(u8 bg_id, const void *src, int size, u16 offset, u8 mode);
bool8 __attribute__((long_call)) free_temp_tile_data_buffers_if_possible(void);
void __attribute__((long_call)) LoadMenuElementsPalette(u8 palOffset, u8 palId);
void __attribute__((long_call)) blit_move_info_icon(u8 winId, u8 a2, u16 x, u16 y);
struct WindowTemplate __attribute__((long_call)) SetWindowTemplateFields(u8 bg, u8 left, u8 top, u8 width, u8 height, u8 paletteNum, u16 baseBlock);
void __attribute__((long_call)) DrawStdFrameWithCustomTileAndPalette(u8 windowId, bool8 copyToVram, u16 tileStart, u8 palette);
void __attribute__((long_call)) TextWindow_SetStdFrame0_WithPal(u8 windowId, u16 tileStart, u8 palette);
void __attribute__((long_call)) ResetBgPositions(void);
void __attribute__((long_call)) ClearStdWindowAndFrame(u8 windowId, bool8 copyToVram);
void __attribute__((long_call)) DrawStdWindowFrame(u8 windowId, bool8 CopyToVram);
u16 __attribute__((long_call)) CreateWindowTemplate(u8 bg, u8 left, u8 top, u8 width, u8 height, u8 paletteNum, u16 baseBlock);