# Codespell with GitHub Actions -- including annotations for Pull Requests

This GitHub Actions runs codetypo over your code.
Any warnings or errors will be annotated in the Pull Request.

## Usage

```yml
uses: khulnasoft/codetypo-actions@v2
```

### Parameter: check_filenames

If set, check file names for spelling mistakes as well.

This parameter is optional; by default `codetypo` will only check the file contents.

```yml
uses: khulnasoft/codetypo-actions@v2
with:
  check_filenames: true
```

### Parameter: check_hidden

If set, check hidden files (those starting with ".") for spelling mistakes as well.

This parameter is optional; by default `codetypo` will not check hidden files.

```yml
uses: khulnasoft/codetypo-actions@v2
with:
  check_hidden: true
```

### Parameter: exclude_file

File with lines that should not be checked for spelling mistakes.

This parameter is optional; by default `codetypo` will check all lines.

```yml
uses: khulnasoft/codetypo-actions@v2
with:
  exclude_file: src/foo
```

### Parameter: skip

Comma-separated list of files to skip (it accepts globs as well).

This parameter is optional; by default `codetypo` won't skip any files.

```yml
uses: khulnasoft/codetypo-actions@v2
with:
  skip: foo,bar
```

### Parameter: builtin

Comma-separated list of builtin dictionaries to use.

This parameter is optional; by default `codetypo` will use its default selection of built in dictionaries.

```yml
uses: khulnasoft/codetypo-actions@v2
with:
  builtin: clear,rare
```

### Parameter: ignore_words_file

File that contains words which will be ignored by `codetypo`. File must contain one word per line.
Words are case sensitive based on how they are written in the dictionary file.

This parameter is optional; by default `codetypo` will check all words for typos.

```yml
uses: khulnasoft/codetypo-actions@v2
with:
  ignore_words_file: .codetypoignore
```

### Parameter: ignore_words_list

Comma-separated list of words which will be ignored by `codetypo`.
Words are case sensitive based on how they are written in the dictionary file.

This parameter is optional; by default `codetypo` will check all words for typos.

```yml
uses: khulnasoft/codetypo-actions@v2
with:
  ignore_words_list: abandonned,ackward
```

### Parameter: uri_ignore_words_list

Comma-separated list of words which will be ignored by `codetypo` in URIs and emails only.
Words are case sensitive based on how they are written in the dictionary file.
If set to "*", all misspelling in URIs and emails will be ignored.

This parameter is optional; by default `codetypo` will check all URIs and emails for typos.

```yml
uses: khulnasoft/codetypo-actions@v2
with:
  uri_ignore_words_list: abandonned
```

### Parameter: path

Indicates the path to run `codetypo` in.
This can be useful if your project has code you don't want to spell check for some reason.

This parameter is optional; by default `codetypo` will run on your whole repository.

```yml
uses: khulnasoft/codetypo-actions@v2
with:
  path: src
```

### Parameter: only_warn

Only warn about problems.
All errors and warnings are annotated in Pull Requests, but it will act like everything was fine anyway.
(In other words, the exit code is always 0.)

This parameter is optional; setting this to any value will enable it.

```yml
uses: khulnasoft/codetypo-actions@v2
with:
  only_warn: 1
```
