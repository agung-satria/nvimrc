" Keeping the functionality of ; and , via mappings

:let g:clever_f_ignore_case = 1
:let g:clever_f_smart_case = 1
:let g:clever_f_show_prompt = 0
:let g:clever_f_chars_match_any_signs = ';' "~!@#$%^&*() keys are hard to press. Use ; to match all symbols (f;)

map ; <Plug>(clever-f-repeat-forward)
map , <Plug>(clever-f-repeat-back)
