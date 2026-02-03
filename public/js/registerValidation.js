document.addEventListener('DOMContentLoaded', () => {
    
    const form = document.querySelector('.loginRegisterForm');
    const usernameInput = document.getElementById('username');
    const passwordInput = document.getElementById('password');

    const ERROR_MESSAGES = {
        username: {
            valueMissing: 'Lo username è obbligatorio',
            tooShort: 'Lo username deve contenere almeno 3 caratteri',
            tooLong: 'Lo username non può superare i 30 caratteri',
            patternMismatch: 'Lo username può contenere solo lettere, numeri, trattini e underscore'
        },
        password: {
            valueMissing: 'La password è obbligatoria',
            tooShort: 'La password deve contenere almeno 4 caratteri',
            tooLong: 'La password non può superare i 128 caratteri'
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

        if (input.validity.tooShort) {
            showError(input, ERROR_MESSAGES[fieldName].tooShort);
            return false;
        }

        if (input.validity.tooLong) {
            showError(input, ERROR_MESSAGES[fieldName].tooLong);
            return false;
        }

        if (input.validity.patternMismatch) {
            showError(input, ERROR_MESSAGES[fieldName].patternMismatch);
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
        
        if (input.getAttribute('aria-invalid') === 'true') {
            validateField(input);
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

    usernameInput.addEventListener('blur', handleBlur);
    usernameInput.addEventListener('input', handleInput);
    
    passwordInput.addEventListener('blur', handleBlur);
    passwordInput.addEventListener('input', handleInput);
    
    form.addEventListener('submit', handleSubmit);

});