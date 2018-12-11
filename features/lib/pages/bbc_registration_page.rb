require 'capybara/dsl'

class BbcRegistrationPage
    include Capybara::DSL 

    DAY_INPUT_ID = 'day-input'
    MONTH_INPUT_ID = 'month-input'
    YEAR_INPUT_ID = 'year-input'
    SUBMIT_BUTTON_ID = '#submit-button'
    PASSWORD_INPUT_ID = '#password-input'

    def click_thirteen_or_over
        find(:xpath, '//*[@id="container"]/div/div/div/div[2]/div[2]/div[2]/div/div[3]/fieldset/div[1]/a[2]').click()
    end

    def fill_day_field
        fill_in(DAY_INPUT_ID, with: "19" )
    end

    def fill_month_field
        fill_in(MONTH_INPUT_ID, with: "04" )
    end

    def fill_year_field
        fill_in(YEAR_INPUT_ID, with: "1991" )
    end

    def click_submit_button
        find(SUBMIT_BUTTON_ID).click()
    end

    def fill_in_password(password)
        find(PASSWORD_INPUT_ID).send_keys(password)
        # fill_in(PASSWORD_INPUT_ID, with: (password))
    end

    def get_password_error_message
        find(:xpath, '//*[@id="form-message-password"]/p').text
    end
end