/*
### Config Tmux ###

- bind command button to <C-a>
- set zsh to default shell
- bind vim key to move pane
- bind <C-[vim key]> to moe pane without command
- bind | and - to split pane
- bind r to reload config
- bind x, X, & to kill with bypass permission

*/

{ pkgs, ... }:
{
  config = ''
    unbind C-b
    set -g prefix C-a
    bind C-a send-prefix

    set -g default-shell ${pkgs.zsh}/bin/zsh

    # ใช้ hjkl move pane
    bind h select-pane -L
    bind j select-pane -D
    bind k select-pane -U
    bind l select-pane -R

    # Ctrl + hjkl ย้าย pane โดยไม่ต้อง prefix
    bind -n C-h select-pane -L
    bind -n C-j select-pane -D
    bind -n C-k select-pane -U
    bind -n C-l select-pane -R

    # split pane แบบ vim
    bind | split-window -h
    bind - split-window -v

    # reload config
    bind r source-file ~/.tmux.conf \; display "Reloaded!"

    bind x kill-pane
    bind & kill-window
    bind X kill-server
'';
}
