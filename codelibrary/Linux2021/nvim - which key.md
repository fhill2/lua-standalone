https://github.com/folke/which-key.nvim

features to try:
-   built-in plugins:
    -   **marks:** shows your marks when you hit one of the jump keys.
    -   **registers:** shows the contents of your registers
    -   **presets:** built-in key binding help for `motions`, `text-objects`, `operators`, `windows`, `nav`, `z` and `g`
    -   **spelling:** spelling suggestions inside the which-key popup
	
	
	
	___
	https://github.com/folke/which-key.nvim/issues/153
	To map the same key to different commands in different modes, call register a second time with the mode option set. If you do not set the mode on the register call, some options (such as group names) may not work. For example: