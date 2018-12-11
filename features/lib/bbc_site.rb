#superclass - include all pages in here

require_relative 'pages/bbc_homepage'
require_relative 'pages/bbc_sign_in_page'
require_relative 'pages/bbc_registration_page'

module BbcSite

    def bbc_homepage
        #instantiate the class bbc_homepage
        BbcHomepage.new
    end

    def bbc_sign_in_page
        BbcSignInPage.new
    end

    def bbc_registration_page
        #instantiate the class bbc_registration_page
        BbcRegistrationPage.new 
    end
end