require_relative '../scrapper'

module Raw
  module Google
    class Famous < Scrapper
      @birth_date_css = 'div.kCrYT > div.PqksIc.nRlVm > div.BNeawe > div > div.BNeawe > span'

      class << self
        def birth_date(famous_person)
          with_retry do
            parsed_page = get_page_result_for("#{famous_person} birth date is")
            parsed_page.at_css(@birth_date_css).text
          end
        end
      end
    end
  end
end
