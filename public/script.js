document.addEventListener("DOMContentLoaded", () => {
  const erroredForm = document.querySelector("[data-errored]");
  if (erroredForm) {
    return erroredForm.scrollIntoView({ behavior: "instant", block: "center" });
  }
  return;
});

function toggleForm(id) {
  const form = document.getElementById(id);
  return form.classList.toggle("visible");
}

const actionHandlers = {
  toggleForm: { fn: toggleForm, reload: false },
};

document.addEventListener("click", async (e) => {
  const { action, id } = e.target.dataset;
  const handler = actionHandlers[action];
  if (!handler) {
    return;
  }

  await handler.fn(id);
  if (handler.reload) {
    return window.location.reload();
  } else {
    return;
  }
});
