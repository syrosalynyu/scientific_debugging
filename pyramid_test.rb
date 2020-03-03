require "minitest"
require "minitest/autorun"
require "minitest/reporters"
require_relative "pyramid"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


describe "pyramid" do
#   it "odd" do
#   odd = build_pyramid(7)
#   expect(odd).must_equal 
#   "#
#   ###
#  #####
# #######"
#   end

#   it "even" do
#     even = build_pyramid(8)
#     expect(even).must_equal 
#    "##
#    ####
#   ######
#  ########" 
#   end

  it "odd" do
    width = 7
    expectation = "   #\n" +
                  "  ###\n" +
                  " #####\n" +
                  "#######\n"
    pyramid = build_pyramid(width)
    expect(pyramid).must_equal expectation
    
    end

    it "even" do
      width = 8
      expectation = "   ##\n" +
                    "  ####\n" +
                    " ######\n" +
                    "########\n"
    pyramid = build_pyramid(width)
    expect(pyramid).must_equal expectation
    end

end