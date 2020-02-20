# Modified version of mlx.

## Default mlx events :
  __KEYPRESS__ = raise event when a key is press .  
  __KEYRELEASE__ = raise event when a key is released .  
  __DESTROYNOTIFY__ = raise event when the window's red cross is press .     

## Events added :
  __FOCUSIN__ = raise event when the window has focus .   
  __FOCUSOUT__ =  raise event when the window lose focus .   
  __CONFIGURENOTIFY__  = raise event when window size has changed .   
 
All events above and keys numbers __are defined in x11.h__
 
How to set hooks :

```c
int     is_key_press(int key)
{
    if (key == A_KEY)
       printf("key 'A' pressed\n");
 }
 
mlx_hook(g_app.win_ptr, KEYPRESS, NOEVENTMASK, is_key_press, NULL);
 ```
 
 ## Default mlx functions :
 
 
 ## Functions added :
```c
   int     mlx_window_get_size(void *win_ptr, int *width, int *height);
   int     mlx_window_set_min_size(void *win_ptr, int width, int height);
   int     mlx_window_set_max_size(void *win_ptr, int width, int height);

   int     mlx_window_resizable_on(void *win_ptr);
   int     mlx_window_resizable_off(void *win_ptr);

   int     mlx_window_miniaturizable_on(void *win_ptr);
   int     mlx_window_miniaturizable_off(void *win_ptr);

   int     mlx_window_closable_on(void *win_ptr);
   int     mlx_window_closable_off(void *win_ptr);

   int     mlx_window_titled_on(void *win_ptr);
   int     mlx_window_titled_off(void *win_ptr);

   int     mlx_window_toggle_fullscreen(void *win_ptr);

   int     mlx_window_set_title(void *win_ptr, char *title);
   int     mlx_window_set_background(void *win_ptr, int color);

   int     mlx_screen_get_resolution(int *width, int *height);
```

 
 
