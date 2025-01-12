#!/bin/bash
# SPDX-FileCopyrightText: 2024 Sou Kawamoto <s23c1040mc@s.chibakoudai.jp>
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo "${1}行目が違うよ"
    res=1
}

res=0

# テストデータを用意
input="Hello\nWorld\nPython\nTest"
expected_output=$(echo -e "OLLEh\nDLROw\nNOHTYp\nTSEt")

# Pythonスクリプトの出力を取得
output=$(echo -e "$input" | python3 convert_and_reverse.py)

# 出力を比較
if [ "$output" != "$expected_output" ]; then
    ng "$LINENO"
fi

[ "$res" = 0 ] && echo "OK" # 通ったのが（人間に）分かるように表示
exit $res
