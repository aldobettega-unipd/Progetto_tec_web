
document.addEventListener('DOMContentLoaded', () => {
    
    const form = document.querySelector('.loginRegisterForm');
    const usernameInput = document.getElementById('username');
    const passwordInput = document.getElementById('password');

    const ERROR_MESSAGES = {
        username: {
            valueMissing: 'Lo username è obbligatorio',
        },
        password: {
            valueMissing: 'La password è obbligatoria',
        }
    };

    const showError = (input, message) => {
        const errorElement = document.getElementById(`${input.id}-error`);
        errorElement.textContent = message;
        errorElement.style.display = 'block';
        input.setAttribute('aria-invalid', 'true');
        input.classList.add('input-error');
    };

    const hideError = (input) => {
        const errorElement = document.getElementById(`${input.id}-error`);
        errorElement.textContent = '';
        errorElement.style.display = 'none';
        input.setAttribute('aria-invalid', 'false');
        input.classList.remove('input-error');
    };

    const validateField = (input) => {
        const fieldName = input.id;
        
        if (input.validity.valueMissing) {
            showError(input, ERROR_MESSAGES[fieldName].valueMissing);
            return false;
        }

        hideError(input);
        return true;
    };

    const handleBlur = (e) => {
        validateField(e.target);
    };

    const handleInput = (e) => {
        const input = e.target;
        if (input.validity.valid) {
            hideError(input);
        }
    };


    const handleSubmit = (e) => {
        let isValid = true;

        [usernameInput, passwordInput].forEach(input => {
            if (!validateField(input)) {
                isValid = false;
            }
        });

        if (!isValid) {
            e.preventDefault();

            const firstError = form.querySelector('[aria-invalid="true"]');
            if (firstError) {
                firstError.focus();
            }
        }
    };

    // Event listeners
    usernameInput.addEventListener('blur', handleBlur);
    usernameInput.addEventListener('input', handleInput);
    
    passwordInput.addEventListener('blur', handleBlur);
    passwordInput.addEventListener('input', handleInput);
    
    form.addEventListener('submit', handleSubmit);

});