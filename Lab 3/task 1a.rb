# frozen_string_literal: true

A = false
B = true
C = true
X = -24
Y = 4
Z = 8

print 'a) ', !(A || B) && (A && !B), "\n"

print 'b) ', ((Z != Y).object_id <= (Y <= 6 && A || B && C && X).object_id).object_id >= 1.5, "\n"

print 'c) ', 8 - X * 2 <= Z && X ** 2 == Y ** 2 || Z >= 15, "\n"

print 'd) ', X > 0 && Y < 0 || Z >= X * Y - Y / X + Z * 2, "\n"

print 'e) ', !(A || B && !(C || (!A || B))), "\n"

print 'f) ', X ** 2 + Y ** 2 >= 1 && X >= 0 && Y >= 0, "\n"

print 'g) ', (A && ((C && B) == (B || A)) || C) && B, "\n"
