# Transcript Cleaning Rules

Use these rules when turning Feishu Minutes transcripts into qualitative research materials.

## Editing Principle

Apply minimal necessary edits:

- Make sentences grammatically fluent and readable.
- Smooth spoken fragments into complete, natural sentences when the intended meaning is clear.
- Adjust punctuation, sentence breaks, and connective words so the transcript reads like a polished interview transcript rather than raw machine transcription.
- Do not change the original meaning.
- Preserve as many concrete details as possible.
- Avoid excessive deletion, compression, embellishment, or interpretation.
- Keep the respondent's viewpoint, uncertainty, emotion, and sequence of narration.

## What To Fix

Fix obvious speech-to-text problems when the intended meaning is clear:

- repeated filler caused by transcription, such as duplicated words
- missing punctuation that harms readability
- common homophone or segmentation errors
- broken sentence boundaries
- raw spoken fillers that interrupt readability, such as repeated `就是`, `然后`, `嗯`, `呃`, when they do not carry analytic meaning
- overly fragmented short clauses that can be safely joined into one fluent sentence
- obvious proper-noun mistakes when context confirms the correction

## Speaker Labels

Replace raw Feishu labels such as `说话人 1` and `说话人 2` with role labels whenever the interview structure makes the roles clear:

- Use `访谈者：` for the researcher asking questions, explaining consent, guiding topics, or closing the interview.
- Use `受访者：` for the participant answering questions, describing experiences, or providing demographic information.
- If the same raw speaker number maps differently across recordings, infer the mapping separately for each recording.
- If a short fragment cannot be confidently assigned, keep the raw speaker label and add `待核对`.
- Preserve timestamps when useful for auditability, but the main readable transcript may use role labels rather than raw speaker numbers.

Do not leave `说话人 1` / `说话人 2` in the final master document when the role is inferable.

## Light Condensation

Lightly merge or remove utterances that carry no analytic information, while keeping the transcript suitable for qualitative analysis.

You may remove or merge:

- opening/closing pure logistics such as `哈喽`, `能听到吗`, `拜拜`, unless consent or research ethics are discussed
- repeated acknowledgements such as `嗯嗯`, `好的好的`, `对对对` when they only keep the conversation flowing
- network or device troubleshooting such as `有点卡`, `听不到`, `麦有点远`, unless it explains missing or unclear content
- duplicated questions caused by interruption, stutter, or transcription repetition
- interviewer backchannels that do not change the direction of the answer

Keep or mark rather than delete:

- consent, confidentiality, recording permission, and research-purpose statements
- demographic information and recruitment context
- moments where the respondent hesitates, revises, contradicts themselves, laughs, or expresses uncertainty in an analytically meaningful way
- interviewer prompts that introduce a new topic, define a concept, or shape the respondent's answer
- unclear parts that may affect interpretation; mark them as `[听不清]` or `待核对`

When condensing, do not turn the transcript into a summary. The output should still read as an interview transcript with turns, not as thematic notes.

## Fluency Level

Default to a moderate fluency pass:

- Keep the transcript close to the respondent's original wording, but make each turn readable in ordinary written Chinese.
- Delete or reduce repeated fillers when they only reflect speech habits, for example turning `然后然后我就是觉得` into `然后我觉得`.
- Combine adjacent fragments by the same speaker when they form one continuous answer or question.
- Repair obvious machine-transcription punctuation and clause breaks so readers can follow the logic without rereading.
- Keep colloquial tone and distinctive phrasing when it may matter for later coding or discourse analysis.
- Do not rewrite the respondent into a formal essay style, do not replace everyday words with academic concepts, and do not compress a detailed answer into a short conclusion.

## What To Preserve

Preserve analytically meaningful features:

- important pauses, hesitation, laughter, emotion, contradiction, or self-correction
- local expressions, platform terms, policy names, place names, and occupational terms
- examples, anecdotes, numbers, time references, and relationship details
- interviewer questions and respondent answers as separate speakers

Use bracketed notes only when needed, for example `[听不清]`, `[笑]`, `[停顿]`, `[疑似...]`. Do not overuse notes.

## What Not To Do

Do not:

- summarize the transcript into thematic notes unless asked
- merge multiple answers into one abstract paragraph
- remove details because they seem repetitive
- add causal explanations or social-science concepts that the respondent did not say
- normalize politically, morally, or stylistically sensitive content beyond readability
- fabricate demographic information or missing context

## Output Format

For each interviewee section:

1. Add a short metadata block or table if fields are known.
2. Keep the transcript in chronological order.
3. Use speaker labels consistently, such as `访谈者：` and `受访者：`.
4. Mark unclear parts as `待核对` or `[听不清]`.
5. Add a final `待确认信息` list only for uncertain metadata or unclear transcript fragments.
