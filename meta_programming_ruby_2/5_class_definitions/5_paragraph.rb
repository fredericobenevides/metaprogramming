# Exemplo de como utilizar insgleton methods

class Paragraph
  def initialize(text)
    @text = text
  end

  def title?; @text.upcase == @text; end
  def reverse?; @text.reverse; end
  def upcase; @text.upcase; end
end

def index(paragraph)
  add_to_index(paragraph) if paragraph.title?
end

# agora a classe paragrafo pode ser removida

paragraph = "any string can be a paragraph"
def paragraph.title?
  self.upcase == self
end