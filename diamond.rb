=begin

. for outer_indent
* for inner_indent

....A
...B*B
..C** C
.D***  D
E****   E
.D***  D
..C** C
...B*B
....A

=end

class Diamond

  def initialize(middle_char)
    raise 'INVALID INPUT' unless middle_char[/^[a-zA-Z]$/]
    @middle_char = middle_char.capitalize
    @middle_char_ascii = to_ascii(@middle_char)
  end

  def print(current_char = 'A')
    curr_row = generate_row(current_char)

    puts curr_row

    if current_char != @middle_char
      print(current_char.next)
      puts curr_row
    end
  end

  private

  def to_ascii(character)
    character.ord
  end

  def generate_row(current_char)
    max_outer_indent = @middle_char_ascii - to_ascii('A')
    outer_indent = @middle_char_ascii - to_ascii(current_char)
    inner_indent = max_outer_indent - outer_indent

    row = ""
    row << " " * outer_indent
    row << current_char

    if inner_indent > 0
      row << " " * (inner_indent * 2 - 1)
      row << current_char
    end

    row
  end



end


