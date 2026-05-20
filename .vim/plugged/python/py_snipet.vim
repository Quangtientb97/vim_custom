inorea py_env_Ent <esc>:set formatoptions-=cro<cr>i
            \#!/usr/bin/python3<cr>
            \#----------------------------------------------------------------------<cr>
            \#  File name     : <esc>:r!basename %<cr>i<bs><esc>o
            \#  Function      : <empty><cr>
            \#  Author        : Tian<cr>
            \#  Email         : tientq@coasia.com<cr>
            \#  Created time  : <esc>:r !date '+\%Y-\%m-\%d \%H:\%M:\%S'<cr>i<bs><esc>o
            \#----------------------------------------------------------------------<cr>
            \import re, os, argparse<cr>
            \import sys ; sys.path.append("/mnt/users/tientq/tiandir/python/")<cr>
            \import tian; sys.path.append(tian.user_library_path)<cr>
            \from   tian           import this_file, this_dir<cr>
            \<cr>
            \# --------------------------------------------------------------------+<cr>
            \# Function declare                                                    \|<cr>
            \# --------------------------------------------------------------------+<cr>
            \def get_args():<cr>
            \parser = argparse.ArgumentParser(description="File description")<cr>
            \# Add arguments<cr>
            \parser.add_argument("-f", "--file", type=str, required=True, help="input file link")<cr>
            \parser.add_argument(      "--on"  , action="store_true", required=False, help="boolean variable take True/False")<cr>
            \return parser.parse_args()<cr>
            \<cr>
            \<cr>
            \<bs># --------------------------------------------------------------------+<cr>
            \# main                                                                \|<cr>
            \# --------------------------------------------------------------------+<cr>
            \def main() -> int:<cr>
            \args = get_args()<cr>
            \print("Start...")<cr>
            \<cr>
            \<cr>
            \<bs># --------------------------------------------------------------------+<cr>
            \# Script entry point                                                  \|<cr>
            \# --------------------------------------------------------------------+<cr>
            \if __name__ == "__main__":<cr>
            \tian.time.start()<cr>
            \rc = main()<cr>
            \print(f"Command: 'python3 {' '.join(sys.argv)}'")<cr>
            \tian.time.end()<cr>
            \sys.exit(rc)<cr>
            \<esc>:set formatoptions+=cro<cr><esc>

inorea py_parallel_Ent <esc>:set formatoptions-=cro<cr>i
            \from concurrent.futures import ThreadPoolExecutor<cr>
            \with ThreadPoolExecutor() as executor:<cr>
            \# Create sheets in parallel<cr>
            \executor.map(lambda register: create_reg_sheet(workexcel, register), registers)<cr>
            \<esc>:set formatoptions+=cro<cr>

inorea py_help <esc>:set formatoptions-=cro<cr>i
            \if (tian.argv.get_argument_by_prefix("-h")) or (len(sys.argv) == 1):<cr>
            \    fd = os.path.dirname(__file__)<cr>
            \    tian.run(f"cat {fd}/README")<cr><cr>
            \<esc>:set formatoptions+=cro<cr>

inorea py_try_Ent <esc>:set formatoptions-=cro<cr>i
            \try:<cr>
            \__fill()<cr>
            \except Exception as e:<cr>
            \print("Error:", e)<cr>
            \<esc>:set formatoptions+=cro<cr>

inorea py_excel_Ent <esc>:set formatoptions-=cro<cr>i
            \tian.excel.create_excel_file("__fill")<cr>
            \workexcel = tian.excel("__fill")<cr>
            \workbook  = tian.wb<cr>
            \#workexcel.create_sheet("Summary")<cr>
            \#workexcel.remove_sheet("Sheet")<cr>
            \<esc>:set formatoptions+=cro<cr>

inorea py_tqdm_Ent <esc>:set formatoptions-=cro<cr>i
            \from tqdm import tqdm<cr>
            \pbar = tqdm(__fill, bar_format="{n_fmt}/{total_fmt} \| {desc}")<cr>
            \pbar.set_description("Processing...")<cr>
            \<esc>:set formatoptions+=cro<cr>
