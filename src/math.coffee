#    Rcssim2d.js - A robot soccer simulator 2d in js
#    Copyright 2013 Jules Wang
#
#    Rcssim2d.js is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    Rcssim2d.js is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.

##
 #
 # absolute angle to relative angle, in degrees
 # @param  ->Number} absolute angle in degrees
 # @returns  ->Number} relative angle in degrees
 #
Math.normaliseDegrees = (degrees) ->
    degrees = degrees % 360
    degrees += 360 if degrees < 0
    return degrees

##
 #
 # absolute angle to relative angle, in radians
 # @param  ->Number} absolute angle in radians
 # @returns  ->Number} relative angle in radians
 #
Math.normaliseRadians = (radians) ->
    radians = radians % (2*Math.PI)
    radians += (2*Math.PI) if radians < -Math.PI
    radians -= (2*Math.PI) if radians > Math.PI
    return radians


##
 #
 # convert radians to degrees
 # @param  ->Number} radians
 # @returns  ->Number} degrees
 #
Math.degrees = (radians)  ->
    return radians * (180 / Math.PI)


##
 #
 # convert degrees to radians
 # @param  ->Number} degrees
 # @returns  ->Number} radians
 #
Math.radians = (degrees)  ->
    return degrees * (Math.PI / 180)

##
 # 
 # get the sign of a number
 # @param ->Number} number
 # @returns ->Number} -1 or 1
Math.sign = (number) ->
    return number/Math.abs(number)
