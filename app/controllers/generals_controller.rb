require './lib/smtp.rb'
class GeneralsController < ApplicationController

  def contact
  end

  def email
    # byebug
    recipient = "derekgc@icloud.com"
    subjects ="new comment from #{getparams["name"]}"
    mail_that(recipient,subjects,getparams["comment"])
    redirect_to home_path

  end

  def root

  end

  private

  def getparams
    # byebug
    result ={}
    result["name"] = params["name"]
    result["comment"] = params["comment"]
    result

  end
end
