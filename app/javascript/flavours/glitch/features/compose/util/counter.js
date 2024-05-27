import { urlRegex } from './url_regex';

const urlPlaceholder = '$2xxxxxxxxxxxxxxxxxxxxxxx';

export function countableText(inputText) {
  return inputText
    .replace(urlRegex, urlPlaceholder)
    .replace(/(^|[^/\w])@((\p{L}\p{M}*|[0-9_.-])+@[a-z0-9.-]+[a-z0-9]+)/igu, '$1@$3');
}
