
# Image-blur.rb is solution to the Image Blur 2 coding Challenge.
# It assumes that an array is passed with n array elements of n length 
# and that the first element of the array is representative of all 
# elements

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

  def get_manhattan_set(x,y,m)
    # build set of coordinates at a distance of m from the provided coordinate start
    # return set as an array
    coord = []
    coord << [x,y]
      (1..m).each do |distance|
        (-m..m).each do |delta_x|
          (-m..m).each do |delta_y|
            if (delta_x.abs + delta_y.abs) == distance
              coord << [x+delta_x,y+delta_y]
            end
          end
        end 
      end
    coord
  end

  # blur generates a new array of n elements of n length based on the 
  # original array passed into the Image class
  def blur(distance)
    # instantiate variables
    @b_array = Array.new(array.length) { Array.new(array[0].length,0) }
    min_y= 0
    max_y = b_array.length - 1
    min_x = 0 
    max_x = b_array[0].length - 1
    blurred_coordinates = []
    #iterate through each row of the array, passing down index and value
    array.each_with_index do |row,row_i|
      #iterate through each column (value) passing index and value
      row.each_with_index do |col,col_i| 
        if row[col_i] == 1 
          blurred_coordinates << get_manhattan_set(row_i,col_i,distance)
        end
      end
    end

    blurred_coordinates.each do |set|
      set.each do |point|
        unless point[0]< min_x || point[1] < min_y || point[0]> max_y || point[1] > max_x
            @b_array[point[0]][point[1]] = 1
        end
      end      
    end
  end

  def output_blurry
    puts "Blurred Image:"
    b_array.each do |row|
      puts row.join
    end
    puts "\n"
  end
end

# Sample code proving Image class operation
image = Image.new([
  [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0],
  [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
  [0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0],
  [1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1],
  [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],

])

image.output_image
image.blur(4)
image.output_blurry