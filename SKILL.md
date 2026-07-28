---
name: qualitative-interview-processor
description: 访谈整理skill；process qualitative social-science interview recordings and transcripts into organized Lark/Feishu artifacts. Use when the user says "访谈整理skill", "访谈整理", "整理访谈录音", or provides a folder of audio/video interview files and wants Codex to upload them to Lark Drive, generate Feishu Minutes transcripts, open or create linked cloud documents, polish transcripts with minimal-meaning-preserving edits, combine multiple interviewees into one master document, and create a respondent summary table with inferred fields such as respondent ID, age, platform, city, occupation, gender, interview date, and other study-specific metadata.
---

# Qualitative Interview Processor

## Core Workflow

1. Confirm the local folder path and research topic only if missing. If the user already gave both, proceed.
2. Inventory the folder recursively for audio/video files and preserve the original filenames as evidence.
3. Use `lark-drive` to upload each recording to Feishu/Lark Drive.
4. Use `lark-minutes` to create Feishu Minutes for each uploaded recording and fetch available transcript, summary, chapter, and action-item artifacts.
5. Use `lark-doc` to create or update cloud documents:
   - one source document per interviewee when available from Minutes, and
   - one master document that combines all interviewees.
6. In the master document, put a respondent summary table at the top, followed by separate sections such as `受访者一`, `受访者二`, or stable IDs such as `R01`, `R02`.
7. Polish each transcript using the minimal-edit rule in `references/transcript-cleaning.md`: resolve speaker labels to `访谈者` / `受访者` whenever possible, make sentence flow more readable, and lightly merge or remove low-information utterances.
8. Add a brief processing log to the end of the master document: source filename, Minutes link, source doc link, processing status, and any uncertainties.

## Required Skill Routing

Load and follow these skills as needed:

- `lark-drive` for uploading local recordings and importing/exporting files.
- `lark-minutes` for uploading audio/video to Feishu Minutes, querying generated transcripts, and fetching AI artifacts.
- `lark-doc` for reading, creating, combining, and formatting Feishu cloud documents.
- `lark-contact` only when the task needs to resolve people for sharing or collaboration.

If Feishu permissions, login, or `_notice` errors appear, load `lark-shared` before retrying.

## Field Extraction

Read `references/respondent-summary.md` before creating the master table. Infer fields from filenames, transcript content, Minutes metadata, and the user's research topic. Mark uncertain values as `待确认` instead of inventing them.

Default respondent IDs must be stable and sortable: `R01`, `R02`, `R03`. Also include the user-facing label `受访者一`, `受访者二` when writing Chinese documents.

## Transcript Handling

Read `references/transcript-cleaning.md` before polishing transcripts. Preserve meaning, order, important detail, hesitations that matter analytically, and speaker distinctions. Convert raw labels such as `说话人 1` / `说话人 2` into `访谈者` / `受访者` when the role can be inferred. Smooth raw machine-transcribed speech into ordinary readable Chinese without turning it into a summary or academic paraphrase. Do not summarize unless the user explicitly asks for summaries.

## Output Standard

Deliver the master Feishu document link and a concise status list:

- total recordings found
- recordings successfully uploaded
- Minutes/transcripts created
- respondent sections written
- items requiring user confirmation

When processing many files, batch work and update the user periodically with counts and blockers.
