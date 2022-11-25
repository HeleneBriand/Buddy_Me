export function init_flatpickr(flatpickr) {
  const startDateInput = document.getElementById('event_start_date');
  console.log(startDateInput);

  // Check that the query selector id matches the one you put around your form.
  if (startDateInput) {
    const unavailableDates = JSON.parse(document.querySelector('#buddy-event-dates').dataset.unavailable)

    flatpickr(startDateInput, {
      mode: "range",
      minDate: "today",
      disable: unavailableDates,
      dateFormat: "Y-m-d",
    });
  };
}
