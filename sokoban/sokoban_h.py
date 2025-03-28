class Space:
    sData = []

    def __init__(self, s):
        self.sData = s


class Box:
    x = 0
    y = 0

    def up(self, s, b):
        can_move = True
        for _ in range(len(b)):
            if self.x-1 == b[_].x and self.y == b[_].y:
                can_move = False
                break
        if s.sData[self.x-1][self.y] == 1:
            can_move = False
        if can_move:
            self.x -= 1
        return can_move

    def down(self, s, b):
        can_move = True
        for _ in range(len(b)):
            if self.x+1 == b[_].x and self.y == b[_].y:
                can_move = False
                break
        if s.sData[self.x+1][self.y] == 1:
            can_move = False
        if can_move:
            self.x += 1
        return can_move

    def left(self, s, b):
        can_move = True
        for _ in range(len(b)):
            if self.x == b[_].x and self.y-1 == b[_].y:
                can_move = False
                break
        if s.sData[self.x][self.y-1] == 1:
            can_move = False
        if can_move:
            self.y -= 1
        return can_move

    def right(self, s, b):
        can_move = True
        for _ in range(len(b)):
            if self.x == b[_].x and self.y+1 == b[_].y:
                can_move = False
                break
        if s.sData[self.x][self.y+1] == 1:
            can_move = False
        if can_move:
            self.y += 1
        return can_move


class Target:
    x = 0
    y = 0

    def box_det(self, box):
        for _ in box:
            if self.x == _.x and self.y == _.y:
                return True
        return False


class Player:
    x = 0
    y = 0

    def __init__(self, x, y):
        self.x = x
        self.y = y

    def up(self, s, b):
        can_move = True
        for _ in b:
            if self.x-1 == _.x and self.y == _.y:
                if not _.up(s, b):
                    can_move = False
        if s.sData[self.x-1][self.y] == 1:
            can_move = False
        if can_move:
            self.x -= 1

    def down(self, s, b):
        can_move = True
        for _ in range(len(b)):
            if self.x+1 == b[_].x and self.y == b[_].y:
                if not b[_].down(s, b):
                    can_move = False
        if s.sData[self.x+1][self.y] == 1:
            can_move = False
        if can_move:
            self.x += 1

    def left(self, s, b):
        can_move = True
        for _ in range(len(b)):
            if self.x == b[_].x and self.y-1 == b[_].y:
                if not b[_].left(s, b):
                    can_move = False
        if s.sData[self.x][self.y-1] == 1:
            can_move = False
        if can_move:
            self.y -= 1

    def right(self, s, b):
        can_move = True
        for _ in range(len(b)):
            if self.x == b[_].x and self.y+1 == b[_].y:
                if not b[_].right(s, b):
                    can_move = False
        if s.sData[self.x][self.y+1] == 1:
            can_move = False
        if can_move:
            self.y += 1
