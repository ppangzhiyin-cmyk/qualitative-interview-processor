# Respondent Summary Table

Use this guide when creating the summary table at the top of the master interview document.

## Default Columns

Start with these columns unless the user requests a different schema:

- 编号
- 受访者标签
- 录音文件名
- 访谈日期
- 年龄
- 性别
- 职业/身份
- 所在城市/地区
- 研究相关平台/组织/场域
- 访谈时长
- 妙记链接
- 原始云文档链接
- 备注/待确认

## Topic-Specific Columns

Infer extra columns from the study topic and transcript content. Examples:

- Platform work or digital labor: `使用平台`, `平台角色`, `接单/使用年限`, `主要收入来源`.
- Urban studies: `所在城市`, `居住片区`, `迁移经历`, `住房类型`, `通勤方式`.
- Education studies: `学校类型`, `年级/学段`, `专业`, `家庭教育背景`.
- Community or organization studies: `组织角色`, `参与年限`, `参与频率`, `关键关系`.
- Health or care studies: `照护角色`, `疾病/照护情境`, `服务接触`, `家庭结构`.

Only add columns that are useful across multiple respondents or central to the research question.

## Evidence Rules

Prefer evidence in this order:

1. User-provided metadata files or instructions.
2. Structured filename conventions.
3. Feishu Minutes metadata.
4. Transcript statements.
5. Reasonable project-level defaults explicitly supplied by the user.

If a value is uncertain, write `待确认`. If a field is not applicable, write `不适用`. Do not guess age, gender, city, occupation, or platform from names alone.

## Respondent IDs

Use stable IDs:

- `R01` / `受访者一`
- `R02` / `受访者二`
- `R03` / `受访者三`

Sort by filename order unless the user provides another order. Keep the ID mapping consistent across all documents, logs, and filenames.

## Master Document Structure

Use this structure:

1. Title: `访谈资料整理汇总`
2. Research topic and processing date.
3. Respondent summary table.
4. Optional notes on extraction uncertainty.
5. Interviewee sections in ID order.
6. Processing log.

Do not expose private raw local paths in a shared document unless the user explicitly asks. Use original filenames instead.
