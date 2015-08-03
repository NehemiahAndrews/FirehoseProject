# Image-blur-3.rb is solution to the Image Blur 3 coding Challenge.
# It assumes that an array is passed with n array elements of n length 
# and that the first element of the array is representative of all 
# elements.

# It blurs an "image" within a Manhattan distance of n, passed into the blur method

class Image
  attr_reader(:array,:b_array)

  def initialize(ary)
    @array = ary
  end

  # output_image displays the original image array on the console
  def output_image
    puts "Original Image"
    array.each do |row|
      puts row.join 
    end
    puts "\n"
  end

  # output_blurry displays the blurred image array on the console
  # It assumes that the image has been blurred and calls the blur method
  # if not.
  def output_blurry
    if defined? b_array == nil 
      blur
    end
    puts "Blurred Image:"
    b_array.each do |row|
      puts row.join 
    end
    puts "\n"
  end

  # blur generates a new array of n elements of n length based on the 
  # original array passed into the Image class
  def blur
    # instantiate variables
    @b_array = Array.new(array.length) { Array.new(array[0].length,0) }
    @first_row = 0
    @last_row = b_array.length - 1
    @first_column = 0 
    @last_column = b_array[0].length - 1
    @active_pixels = []
    
    # find all locations containing a 1 and write them to the active_pixels array
    # iterate through each row of the array, passing down index and value
    array.each_with_index do |row,row_i|
      #iterate through each column (value) passing index and value
      row.each_with_index do |col,col_i| 
        if row[col_i] == 1 
          @active_pixels << [row_i,col_i] 
          
          # blur above if not first row
          if row_i > @first_row 
           b_array[row_i-1][col_i] = 1
            # puts "Overwriting value at #{row_i-1},#{col_i}"
          end

          # blur left if not first column
          if col_i > @first_column 
           b_array[row_i][col_i - 1] = 1
            # puts "Overwriting value at #{row_i},#{col_i - 1}"
          end

          # blur right if not last column
          if col_i < @last_column
            b_array[row_i][col_i + 1] = 1
            # puts "Overwriting value at #{row_i},#{col_i + 1}"
          end

          # blur below if not last row
          if row_i < @last_row
            b_array[row_i + 1][col_i] = 1
            # puts "Overwriting value at #{row_i + 1},#{col_i}"
          end
        end
      end
    end
  end
end

# Sample code proving Image class operation
image = Image.new([
  [1, 0, 0, 0,0,0,0,1],
  [1, 0, 0, 0,0,0,0,1],
  [1, 0, 0, 1,0,0,0,1],
  [1, 0, 0, 0,0,0,0,1],
  [1, 0, 0, 0,0,0,0,1],
  [1, 0, 0, 0,0,0,0,1],
  [1, 0, 0, 1,0,0,0,1],
  [1, 0, 0, 0,0,0,0,1]
])

image.output_image
image.output_blurry
image.output_image

