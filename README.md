# A modified version of mlx.

## Default mlx events :
  __KEYPRESS__      = raise event when a key is press .  
  __KEYRELEASE__    = raise event when a key is released .  
  __DESTROYNOTIFY__ = raise event when the window's red cross is press .     

## Events added :
  __FOCUSIN__          = raise event when the window has focus .   
  __FOCUSOUT__         =  raise event when the window lose focus .   
  __CONFIGURENOTIFY__  = raise event when the window has been resized.   
 
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
 ```c
// Basic stuff
void		*mlx_init();
int		mlx_loop_hook (void *mlx_ptr, int (*funct_ptr)(), void *param);
int		mlx_loop (void *mlx_ptr);

// Window stuff
void		*mlx_new_window(void *mlx_ptr, int size_x, int size_y, char *title);
int		mlx_destroy_window(void *mlx_ptr, void *win_ptr);
int		mlx_clear_window(void *mlx_ptr, void *win_ptr);
int		mlx_do_sync(void *mlx_ptr);

// Don't use it, it's too slow. Use image instead
int		mlx_pixel_put(void *mlx_ptr, void *win_ptr, int x, int y, int color); 

// Image Stuff
void		*mlx_new_image(void *mlx_ptr,int width,int height);
int		mlx_destroy_image(void *mlx_ptr, void *img_ptr);
char		*mlx_get_data_addr(void *img_ptr, int *bits_per_pixel, int *size_line, int *endian);
int		mlx_put_image_to_window(void *mlx_ptr, void *win_ptr, void *img_ptr, int x, int y);
unsigned int	mlx_get_color_value(void *mlx_ptr, int color);

void		*mlx_xpm_to_image(void *mlx_ptr, char **xpm_data, int *width, int *height);
void		*mlx_xpm_file_to_image(void *mlx_ptr, char *filename, int *width, int *height);
void    	*mlx_png_file_to_image(void *mlx_ptr, char *file, int *width, int *height);


// Events stuff
int		mlx_mouse_hook (void *win_ptr, int (*funct_ptr)(), void *param);
int		mlx_key_hook (void *win_ptr, int (*funct_ptr)(), void *param);
int		mlx_expose_hook (void *win_ptr, int (*funct_ptr)(), void *param);
int		mlx_hook(void *win_ptr, int x_event, int x_mask, int (*funct)(), void *param);

int		mlx_string_put(void *mlx_ptr, void *win_ptr, int x, int y, int color, char *string);



// Mouse and Keyboard stuff
int     	mlx_mouse_hide();
int     	mlx_mouse_show();
int     	mlx_mouse_move(void *win_ptr, int x, int y);
int     	mlx_mouse_get_pos(void *win_ptr, int *x, int *y);
int		mlx_do_key_autorepeatoff(void *mlx_ptr);
int		mlx_do_key_autorepeaton(void *mlx_ptr);

```
 
 
 
 
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

 
 
