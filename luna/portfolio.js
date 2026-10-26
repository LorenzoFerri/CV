const comparison = document.querySelector('#comparison');
const reveal = document.querySelector('#reveal');
reveal.addEventListener('input', () => {
  comparison.style.setProperty('--reveal', `${reveal.value}%`);
  document.querySelector('#reveal-value').value = `${reveal.value}%`;
});
document.querySelectorAll('input[name="comparison-view"]').forEach(input => {
  input.addEventListener('change', () => {
    if (!input.checked) return;
    document.querySelector('#blockout-image').src = `./media/blockout-${input.value}.webp`;
    document.querySelector('#blockout-image').alt = `Saved blockout, ${input.value} view.`;
    document.querySelector('#current-image').src = `./media/current-${input.value}.webp`;
    document.querySelector('#current-image').alt = `Current environment from the same ${input.value} camera.`;
  });
});
const revisions = {
  '5eef1f3': 'Terrain & grass · 20 October 2026 · 5eef1f3',
  'c04c4cd': 'Sky & clouds · 20 October 2026 · c04c4cd',
  'a35f5a2': 'Environment pass · 22 October 2026 · a35f5a2',
  'current': 'Current working version · 26 October 2026'
};
let revision = 'current';
const historyView = document.querySelector('#history-view');
const historyButtons = document.querySelectorAll('[data-revision]');
function updateHistory() {
  const view = historyView.value;
  const source = `./media/${revision}-${view}.webp`;
  const main = document.querySelector('#history-image');
  main.src = source;
  main.alt = `${revisions[revision]}, ${view} view.`;
  document.querySelector('#history-full').href = source;
  document.querySelector('#history-caption').textContent = revisions[revision];
  historyButtons.forEach(button => {
    button.setAttribute('aria-pressed', String(button.dataset.revision === revision));
    button.querySelector('img').src = `./media/${button.dataset.revision}-${view}.webp`;
  });
}
historyButtons.forEach(button => button.addEventListener('click', () => {
  revision = button.dataset.revision;
  updateHistory();
}));
historyView.addEventListener('change', updateHistory);
