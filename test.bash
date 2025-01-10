#!/bin/bash
# SPDX-FileCopyrightText: 2024 Sou Kawamoto <s23c1040mc@s.chibakoudai.jp>
# SPDX-License-Identifier: BSD-3-Clause

# テストケースの定義
test_cases=(
    "Hello World"
    "123 AbC"
    "Test123"
    "aBcDeFg"
    " "
)

# 期待される出力の定義
expected_outputs=(
    "DLROw OLLEh"
    "cBa 321"
    "321tSET"
    "GfEdCbA"
    " "
)

# スクリプトのパス
script_path="./convert_and_reverse.sh"

# テストの実行
for i in "${!test_cases[@]}"; do
    input="${test_cases[$i]}"
    expected="${expected_outputs[$i]}"
    output=$(echo "$input" | $script_path)
    
    if [ "$output" == "$expected" ]; then
        echo "Test $((i+1)): Passed"
    else
        echo "Test $((i+1)): Failed"
        echo "  Input:    $input"
        echo "  Expected: $expected"
        echo "  Got:      $output"
    fi
done
