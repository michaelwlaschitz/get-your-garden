const start_time_input = document.querySelector('#booking_start_time');
const end_time_input = document.querySelector('#booking_end_time');
const calculation = document.querySelector('.calculation');



const calculate_price = () => {
  const price = parseInt(calculation.dataset.price);
  const end_time_value = parseInt(end_time_input.value);
  const start_time_value = parseInt(start_time_input.value);
  if (typeof(end_time_value) === "number" && end_time_value > start_time_value) {
    calculation.innerHTML = `${(end_time_value-start_time_value)*price} $`;
  }
}

const init_price_calculation = () => {
    end_time_input.addEventListener("change", (event) => {
      calculate_price();
    });

    start_time_input.addEventListener("change", (event) => {
      calculate_price();
    });
};

export {init_price_calculation}
