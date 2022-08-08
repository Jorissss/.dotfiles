if status is-interactive
    # Commands to run in interactive sessions can go here
    fish_config theme choose Lava
    fish_config prompt choose scales
    fish_vi_key_bindings
    set fish_cursor_default block
    set fish_cursor_insert line
    set fish_cursor_replace_one underscore
    set fish_cursor_visual block
    set -gx EDITOR nvim
end
