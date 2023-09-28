#tmux display-message -p "#{pane_id}"
import subprocess
import textwrap
import sys

pane_id = sys.argv[1]

# Get the code from the clipboard
code = subprocess.check_output('pbpaste' if sys.platform == 'darwin' else 'xclip -o -selection clipboard', shell=True, text=True)

# Remove common leading whitespaces or indentation
dedented_code = textwrap.dedent(code)

# Send the dedented code to the Tmux panel
subprocess.run(f'tmux set-buffer "{dedented_code}"', shell=True)
subprocess.run(f'tmux paste-buffer -t %{pane_id} ; tmux send-keys -t %{pane_id} Enter', shell=True)

