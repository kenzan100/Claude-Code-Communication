# 大前提

Follow the UNIX philosophy:

1. Make each program do one thing well. To do a new job, build afresh rather than complicate old programs by adding new "features".
2. Expect the output of every program to become the input to another, as yet unknown, program. Don't clutter output with extraneous information. Avoid stringently columnar or binary input formats. Don't insist on interactive input.
3. Design and build software, even operating systems, to be tried early, ideally within weeks. Don't hesitate to throw away the clumsy parts and rebuild them.
4. Use tools in preference to unskilled help to lighten a programming task, even if you have to detour to build the tools and expect to throw some of them out after you've finished using them.

強力な型づけを必ず行い、型駆動でプログラムの変化にガードレールを敷く。

- 内部のドメインオブジェクトは、 interface ではなく、type を使う

# Agent Communication System

## エージェント構成

- **PRESIDENT** (別セッション): 統括責任者
- **boss1** (multiagent:0.0): チームリーダー
- **worker1,2,3** (multiagent:0.1-3): 実行担当

## あなたの役割

- **PRESIDENT**: @instructions/president.md
- **boss1**: @instructions/boss.md
- **worker1,2,3**: @instructions/worker.md

## メッセージ送信

```bash
./agent-send.sh [相手] "[メッセージ]"
```

## 基本フロー

PRESIDENT → boss1 → workers → boss1 → PRESIDENT
