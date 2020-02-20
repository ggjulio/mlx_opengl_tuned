// ************************************************************************** //
//                                                                            //
//                                                        :::      ::::::::   //
//   mlx_window.m                                       :+:      :+:    :+:   //
//                                                    +:+ +:+         +:+     //
//   By: juligonz <marvin@42.fr>                    +#+  +:+       +#+        //
//                                                +#+#+#+#+#+   +#+           //
//   Created: 2020/02/18 15:35:33 by juligonz          #+#    #+#             //
//   Updated: 2020/02/19 19:20:47 by juligonz         ###   ########.fr       //
//                                                                            //
// ************************************************************************** //

#include    <stdio.h>

#import <Cocoa/Cocoa.h>
#import <OpenGL/gl3.h>

#include    "mlx_int.h"
#include    "mlx_new_window.h"

int     mlx_window_get_size(mlx_win_list_t *win, int *width, int *height)
{
	NSRect    pos;

	pos = [(id)(win->winid) frame];
	*width = NSWidth(pos);
	*height = NSHeight(pos);
	return (0);
}

int     mlx_window_set_min_size(mlx_win_list_t *win, int width, int height)
{
	id        theWindow;
	NSSize	  windowMinSize;

	theWindow = [(id)(win->winid) win];
	windowMinSize.width = width;
	windowMinSize.height = height;
	[theWindow setMinSize:windowMinSize];
	return (0);
}

int     mlx_window_set_max_size(mlx_win_list_t *win, int width, int height)
{
	id        theWindow;
	NSSize	  windowMaxSize;

	theWindow = [(id)(win->winid) win];
	windowMaxSize.width = width;
	windowMaxSize.height = height;
	[theWindow setMaxSize:windowMaxSize];
	return (0);
}

int     mlx_window_resizable_on(mlx_win_list_t *win)
{
	id         theWindow;

	theWindow = [(id)(win->winid) win];	
	[theWindow setStyleMask: [theWindow styleMask] | NSResizableWindowMask];
	return (0);
}

int     mlx_window_resizable_off(mlx_win_list_t *win)
{
	id         theWindow;

	theWindow = [(id)(win->winid) win];	
	[theWindow setStyleMask: [theWindow styleMask] & ~NSResizableWindowMask];
	return (0);
}



int     mlx_window_miniaturizable_on(mlx_win_list_t *win)
{
	id         theWindow;

	theWindow = [(id)(win->winid) win];	
	[theWindow setStyleMask: [theWindow styleMask] | NSWindowStyleMaskMiniaturizable];
	return (0);
}

int     mlx_window_miniaturizable_off(mlx_win_list_t *win)
{
	id         theWindow;

	theWindow = [(id)(win->winid) win];	
	[theWindow setStyleMask: [theWindow styleMask] & ~NSWindowStyleMaskMiniaturizable];
	return (0);
}



int     mlx_window_closable_on(mlx_win_list_t *win)
{
	id         theWindow;

	theWindow = [(id)(win->winid) win];	
	[theWindow setStyleMask: [theWindow styleMask] | NSWindowStyleMaskClosable];
	return (0);
}

int     mlx_window_closable_off(mlx_win_list_t *win)
{
	id         theWindow;

	theWindow = [(id)(win->winid) win];	
	[theWindow setStyleMask: [theWindow styleMask] & ~NSWindowStyleMaskClosable];
	return (0);
}

int     mlx_window_titled_on(mlx_win_list_t *win)
{
	id         theWindow;

	theWindow = [(id)(win->winid) win];	
	[theWindow setStyleMask: [theWindow styleMask] | NSWindowStyleMaskTitled];
	return (0);
}

int     mlx_window_titled_off(mlx_win_list_t *win)
{
	id         theWindow;

	theWindow = [(id)(win->winid) win];	
	[theWindow setStyleMask: [theWindow styleMask] & ~NSWindowStyleMaskTitled];
	return (0);
}

int     mlx_window_toggle_fullscreen(mlx_win_list_t *win)
{
	id         theWindow;

	theWindow = [(id)(win->winid) win];	
    [theWindow toggleFullScreen:theWindow];
	return (0);
}

int     mlx_window_set_title(mlx_win_list_t *win, char *p_title)
{
	id			theWindow;
	NSString	*str;

	theWindow = [(id)(win->winid) win];	
	str = [NSString stringWithCString:p_title encoding:NSASCIIStringEncoding];
	[theWindow setTitle:str];
	return (0);
}

int     mlx_window_set_background(mlx_win_list_t *win, int p_color)
{
	id      	theWindow;
	NSColor		*myColor;

	float b  = (p_color      & 0xFF) / 255.0f;
	float g  = (p_color>>8   & 0xFF) / 255.0f;
	float r  = (p_color>>16  & 0xFF)  / 255.0f;
	float a  = (p_color>>24  & 0xFF)  / 255.0f;

	myColor = [NSColor colorWithCalibratedRed:r green:g blue:b alpha:a];

	theWindow = [(id)(win->winid) win];	
	[theWindow setBackgroundColor:myColor];
	return (0);
}

int     mlx_screen_get_resolution(int *width, int *height)
{
	NSRect rect= [[NSScreen mainScreen] frame];

	*width = (int)rect.size.width;
	*height = (int)rect.size.height;
	return (0);
}
