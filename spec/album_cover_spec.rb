RSpec.describe 'HTML Album Cover' do

    context 'within <body>' do
      it 'the title-box section contains the correct header sizes and text content' do
        title_box = parsed_html.search('#title-box').first

        expect(title_box.children.any? {|ch| ch.name == "h4"}).to be == true, "No 'h4' tag(s) found"
        expect(title_box.children.select {|ch| ch.name == "h4"}.first.children.first.text).to be == "PHARRELL WILLIAMS", "Your 'h4' tag should contain the text 'PHARRELL WILLIAMS'"

        expect(title_box.children.any? {|ch| ch.name == "h2"}).to be == true, "No 'h2' tag found"
        expect(title_box.children.select {|ch| ch.name == "h2"}.first.children.first.text).to be == "HAPPY", "Your 'h2' tag should contain the text 'HAPPY'"

        expect(title_box.children.select {|ch| ch.name == "h4"}[1].children.first.text).to include("FROM DESPICABLE ME"), "A second 'h4' tag should contain the text 'FROM DESPICABLE ME'"

      end


      it 'the back section contains the correct header sizes and text content' do

      end

  end
end
