# 访谈整理 Skill

一个用于社科质性研究访谈资料整理的 Codex Skill。它面向需要处理大量访谈录音的研究者，帮助把本地录音文件夹整理成飞书妙记逐字稿和结构化飞书汇总文档。

## 背景

质性研究通常会产生大量访谈录音。研究者需要反复完成这些工作：上传录音、转写逐字稿、清理口语化文本、区分不同受访者、提取基本信息、生成汇总表，并把材料整理成便于后续编码和分析的文档。

这些步骤繁琐、重复，而且很容易在多份访谈之间丢失受访者编号、文件来源、访谈时间和待确认信息。本 Skill 将这套流程固化为 Codex 可复用的工作流，让研究者只需要提供录音所在文件夹，即可让 Codex 按统一标准整理访谈资料。

## 能做什么

当你在 Codex 中输入 `访谈整理skill` 或类似指令时，它会指导 Codex：

- 清点本地文件夹中的访谈录音或视频文件。
- 将录音上传到飞书云空间。
- 使用飞书妙记生成逐字稿和相关 AI 产物。
- 按受访者编号整理材料，例如 `R01 / 受访者一`、`R02 / 受访者二`。
- 在汇总文档顶部生成受访者信息表。
- 从文件名、妙记元数据和逐字稿中提取年龄、职业、城市、平台、场域等研究相关字段。
- 将 `说话人 1 / 说话人 2` 尽可能转换为 `访谈者 / 受访者`。
- 对逐字稿做最小修改：语言更通顺，但不改变原意，不随意删减细节。
- 合理合并或删除低信息内容，例如寒暄、网络卡顿、重复确认和纯承接回应。
- 标注 `待确认` 信息，避免编造受访者资料。
- 输出一个飞书汇总文档链接，便于后续编码、分析和归档。

## 适用场景

- 社会学、人类学、传播学、教育学、政治学等社科质性研究。
- 半结构式访谈、深度访谈、口述史、用户访谈等材料整理。
- 需要把多个受访者录音合并为一个结构化资料文档的场景。
- 需要保留逐字稿细节，而不是直接生成摘要的研究工作。

## 不适合做什么

- 不替代研究者的理论编码、主题分析或论文写作判断。
- 不自动推断无法从材料中确认的人口学信息。
- 不应在未获得受访者同意的情况下上传、转写或分享访谈资料。
- 不适合处理高度敏感或禁止上传到第三方平台的材料。

## 安装

将本仓库克隆到 Codex 的 skills 目录：

```bash
mkdir -p ~/.codex/skills
git clone https://github.com/Evie0715/qualitative-interview-processor.git ~/.codex/skills/qualitative-interview-processor
```

如果你使用了自定义 `CODEX_HOME`：

```bash
mkdir -p "${CODEX_HOME}/skills"
git clone https://github.com/Evie0715/qualitative-interview-processor.git "${CODEX_HOME}/skills/qualitative-interview-processor"
```

安装后重启 Codex，或开启一个新的 Codex 任务。

也可以使用一键安装脚本：

```bash
curl -fsSL https://raw.githubusercontent.com/Evie0715/qualitative-interview-processor/main/install.sh | bash
```

## 使用方式

在 Codex 中输入：

```text
访谈整理skill：请整理 /你的/访谈录音文件夹
```

也可以补充研究主题：

```text
访谈整理skill：请整理 /你的/访谈录音文件夹。研究主题是城市生活经验，请生成一个飞书汇总文档。
```

如果还没有明确主题：

```text
访谈整理skill：请整理 /你的/访谈录音文件夹。请根据访谈内容推断需要汇总的受访者信息字段。
```

## 依赖

本 Skill 依赖 Codex 中可用的飞书 / Lark 相关能力：

- `lark-drive`：上传录音文件到飞书云空间。
- `lark-minutes`：通过飞书妙记生成转写。
- `lark-doc`：创建和更新飞书云文档。
- `lark-vc`：在需要时获取妙记逐字稿产物。
- `lark-shared`：处理飞书登录、授权和权限问题。

使用者需要自行配置 `lark-cli`，并使用自己的飞书账号完成授权。录音、妙记和云文档都会进入使用者自己的飞书环境。

## 隐私与伦理提醒

本仓库不包含任何访谈录音、逐字稿、飞书链接或个人数据。它只包含整理流程和文本规则。

使用时请确保：

- 已获得受访者对录音、转写和资料处理的知情同意。
- 明确访谈资料会上传到飞书云空间和飞书妙记。
- 不在公开仓库中提交录音、逐字稿、受访者姓名、飞书链接、token 或其他可识别信息。
- 对无法确认的人口学信息标记为 `待确认`，不要猜测。

## 仓库结构

```text
qualitative-interview-processor/
├── SKILL.md
├── agents/
│   └── openai.yaml
└── references/
    ├── respondent-summary.md
    └── transcript-cleaning.md
```

## 推荐仓库描述

```text
Codex skill for organizing qualitative interview recordings into Feishu/Lark Minutes transcripts and structured research documents.
```

中文描述：

```text
用于社科质性研究访谈录音整理的 Codex Skill：上传录音、生成飞书妙记、清理逐字稿、汇总受访者信息并生成飞书文档。
```
