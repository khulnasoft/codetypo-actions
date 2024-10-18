# codetypo-validator

This validator lets you show errors from `codetypo` as annotation in
GitHub Actions.

Based on [korelstar](https://github.com/korelstar)'s [xmllint-problem-matcher](https://github.com/korelstar/xmllint-problem-matcher).

## Inputs

No inputs are required.

## Outputs

No outputs are generated apart from a configured validator.

## Usage

Add the step to your workflow, before `codetypo` is called.

```yaml
    - uses: khulnasoft/codetypo-validator@v1
```
