#!/usr/bin#!/usr/bin/env python3
# SPDX-FileCopyrightText: 2024 Sou Kawamoto <s23c1040mc@s.chibakoudai.jp>
# SPDX-License-Identifier: BSD-3-Clause

import sys

def convert_and_reverse(line):
    # 大文字を小文字に、小文字を大文字に変換し、逆順にする
    return line.swapcase()[::-1]

# 標準入力から読み取る
for line in sys.stdin:
    # 改行文字を削除して行を処理する
    processed_line = convert_and_reverse(line.strip())
    # 処理した行を出力する
    print(processed_line)
