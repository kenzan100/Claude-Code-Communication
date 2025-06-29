#!/bin/bash

# Worker進捗確認スクリプト
echo "=== Worker進捗確認 $(date) ==="

# 完了ファイルのチェック
if [ -f ./tmp/worker1_done.txt ]; then
    echo "✓ Worker1: 完了"
else
    echo "○ Worker1: 作業中"
fi

if [ -f ./tmp/worker2_done.txt ]; then
    echo "✓ Worker2: 完了"
else
    echo "○ Worker2: 作業中"
fi

if [ -f ./tmp/worker3_done.txt ]; then
    echo "✓ Worker3: 完了"
else
    echo "○ Worker3: 作業中"
fi

# 全員完了チェック
if [ -f ./tmp/worker1_done.txt ] && [ -f ./tmp/worker2_done.txt ] && [ -f ./tmp/worker3_done.txt ]; then
    echo ""
    echo "🎉 全Workerの作業が完了しました！"
    echo "統合レポートの準備が可能です。"
fi