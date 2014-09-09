require "spec_helper"

describe ConsolePrinter do
  before :each do
    @output = ConsolePrinter.get_output
  end

  describe ".get_output" do 
    it "return a new ConsolePrinter instance" do 
      @output.should be_a ConsolePrinter
    end
  end

  it "put player 1 disc" do
    STDOUT.should_receive(:puts)
    @output.put_player1_disc
  end

  it "put player 2 disc" do
    STDOUT.should_receive(:puts)
    @output.put_player2_disc
  end

  it "puts a horizontal separator" do
    STDOUT.should_receive(:puts)
    @output.put_horizontal_separator
  end

  it "puts a vertical separator" do
    STDOUT.should_receive(:puts)
    @output.put_vertical_separator
  end

  it "puts a string" do     
    STDOUT.should_receive(:puts).with("test string")
    @output.put_message("test string")
  end
end
