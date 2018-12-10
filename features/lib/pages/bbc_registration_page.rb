require 'capybara/dsl'

class BbcRegistrationPage
    include Capybara::DSL 

    DAY_INPUT_ID = 'day-input'
    MONTH_INPUT_ID = 'month-input'
    YEAR_INPUT_ID = 'year-input'
    SUBMIT_BUTTON_ID = '#submit-button'

    def click_thirteen_or_over
        find(:xpath, '//*[@id="container"]/div/div/div/div[2]/div[2]/div[2]/div/div[3]/fieldset/div[1]/a[2]').click()
    end

    # def get_day_field
    #     find(DAY_INPUT_ID)
    # end

    def fill_day_field
        fill_in(DAY_INPUT_ID, with: "19" )
    end

    def fill_month_field
        fill_in(MONTH_INPUT_ID, with: "04" )
    end

    def fill_year_field
        fill_in(YEAR_INPUT_ID, with: "1991" )
    end

    def click_dob_submit_button
        find(SUBMIT_BUTTON_ID).click()
    end
end