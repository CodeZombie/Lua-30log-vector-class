-- Minimal Lua 30Log-compatible vector class
-- Written by Cazum (http://zombiearmy.net) - Aug 2014
-- Released under the WTFPL (Do What the Fuck You Want to Public License)

-- functions with an argument 'v' accept another vector, 's' accept a number value

Vector = class{
	x = 0,
	y = 0
}

function Vector:__init(x, y)
	self.x = x
	self.y = y
end

function Vector:equal(v)
	if self.x == v.x and self.y == v.y then
		return true
	end
	return false
end

function Vector:add(v)
	return Vector(self.x + v.x, self.y + v.y)
end

function Vector:subtract(v)
	return Vector(self.x - v.x, self.y - v.y)
end

function Vector:distance(v)
	xx = self.x - v.x
	yy = self.y - v.y
	return math.sqrt(xx * xx + yy * yy)
end

function Vector:multiply(s)
	return Vector(self.x*s, self.y*s)
end

function Vector:divide(s)
	return Vector(self.x/s, self.y/s)
end

function Vector:normalize()
	l = math.sqrt(self.x*self.x + self.y*self.y)
	if l > 0 then
		return Vector(self.x/l, self.y/l)
	end
	return Vector(self.x,self.y)
end
