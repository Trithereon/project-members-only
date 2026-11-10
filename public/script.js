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

async function handleDeleteGod(id) {
  const url = `/god/delete/${id}`;
  try {
    const res = await fetch(url, { method: "DELETE" });
    if (!res.ok) {
      throw new Error(`Response status: ${res.status}`);
    }
    window.location.href = "/";
  } catch (error) {
    console.error(error.message);
  }
}

async function handleDeletePantheon(id) {
  const url = `/pantheon/delete/${id}`;
  try {
    const res = await fetch(url, { method: "DELETE" });
    if (!res.ok) {
      throw new Error(`Response status: ${res.status}`);
    }
  } catch (error) {
    console.error(error.message);
  }
}

async function handleDeleteDomain(id) {
  const url = `/domain/delete/${id}`;
  try {
    const res = await fetch(url, { method: "DELETE" });
    if (!res.ok) {
      throw new Error(`Response status: ${res.status}`);
    }
    window.location.href = "/domains";
  } catch (error) {
    console.error(error.message);
  }
}

async function handleDeleteSymbol(id) {
  const url = `/symbol/delete/${id}`;
  try {
    const res = await fetch(url, { method: "DELETE" });
    if (!res.ok) {
      throw new Error(`Response status: ${res.status}`);
    }
    window.location.href = "/symbols";
  } catch (error) {
    console.error(error.message);
  }
}

const actionHandlers = {
  deleteGod: { fn: handleDeleteGod, reload: false },
  deletePantheon: { fn: handleDeletePantheon, reload: true },
  toggleForm: { fn: toggleForm, reload: false },
  deleteDomain: { fn: handleDeleteDomain, reload: false },
  deleteSymbol: { fn: handleDeleteSymbol, reload: false },
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
