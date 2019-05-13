(() => {
  const preElm = document.createElement('pre');
  const texts = Array.from(document.querySelectorAll('span.lang-en div.div-btn-copy + pre'))
    .map(e => e.innerText)
    .reduce((acc, v, i) => {
      const j = Math.floor(i / 2);
      if (!acc[j]) {
        acc[j] = [];
      }
      acc[j].push(v.trim());
      return acc;
    }, [])
    .map(([stdin, stdout]) => `run "${stdin}" "${stdout}"`)
    .join('\n');

  preElm.textContent = texts;
  document.body.append(preElm);
  document.getSelection().selectAllChildren(document.querySelector('body > pre:last-child'));
  if (document.execCommand('copy')) {
    document.querySelector('body > pre:last-child').remove();
  }
  alert('copied');
})();
