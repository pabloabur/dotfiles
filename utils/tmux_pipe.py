#tmux display-message -p "#{pane_id}"
import subprocess
import textwrap
import sys

# Get the code from the clipboard
code = subprocess.check_output('pbpaste' if sys.platform == 'darwin' else 'xclip -o -selection clipboard', shell=True, text=True)

# Remove common leading whitespaces or indentation
dedented_code = textwrap.dedent(code)

# Send the dedented code to the Tmux panel
subprocess.run(f'tmux set-buffer "{dedented_code}"', shell=True)
subprocess.run('tmux paste-buffer -t %7 ; tmux send-keys -t %7 Enter', shell=True)

