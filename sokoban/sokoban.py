from sokoban_h import *


def rendering(g, t, b, pl):
    out = [[0, 0, 0, 0, 0, 0, 0, 0],
           [0, 0, 0, 0, 0, 0, 0, 0],
           [0, 0, 0, 0, 0, 0, 0, 0],
           [0, 0, 0, 0, 0, 0, 0, 0],
           [0, 0, 0, 0, 0, 0, 0, 0],
           [0, 0, 0, 0, 0, 0, 0, 0],
           [0, 0, 0, 0, 0, 0, 0, 0],
           [0, 0, 0, 0, 0, 0, 0, 0]]
    for _ in range(len(g.sData)):
        for j in range(len(g.sData[_])):
            out[_][j] = g.sData[_][j]
    for _ in range(4):
        out[t[_].x][t[_].y] = 'F'
        out[b[_].x][b[_].y] = 'N'
    out[pl.x][pl.y] = 'P'
    for _ in range(len(out)):
        for j in range(len(out[_])):
            if out[_][j] == 0:
                print(' ', end=' ')
            else:
                print(out[_][j], end=' ')
        print()

print("P为玩家，输入wsad控制上下左右移动，将所有箱子N推到旗子F上即可通关")
gSpace = Space([[0, 0, 1, 1, 1, 0, 0, 0],
                [0, 0, 1, 0, 1, 0, 0, 0],
                [0, 0, 1, 0, 1, 1, 1, 1],
                [1, 1, 1, 0, 0, 0, 0, 1],
                [1, 0, 0, 0, 0, 1, 1, 1],
                [1, 1, 1, 1, 0, 1, 0, 0],
                [0, 0, 0, 1, 0, 1, 0, 0],
                [0, 0, 0, 1, 1, 1, 0, 0]])
p = Player(4, 4)
box = [Box() for _ in range(4)]
target = [Target() for _ in range(4)]
box[0].x = 3
box[0].y = 3
box[1].x = 3
box[1].y = 5
box[2].x = 4
box[2].y = 3
box[3].x = 5
box[3].y = 4
target[0].x = 1
target[0].y = 3
target[1].x = 3
target[1].y = 6
target[2].x = 4
target[2].y = 1
target[3].x = 6
target[3].y = 4
rendering(gSpace, target, box, p)
win = False
while not win:
    k = input()
    match k:
        case 'w':
            p.up(gSpace, box)
        case 's':
            p.down(gSpace, box)
        case 'a':
            p.left(gSpace, box)
        case 'd':
            p.right(gSpace, box)
    rendering(gSpace, target, box, p)
    win = True
    for i in target:
        if not i.box_det(box):
            win = False
print('well done! stage1 clear!')
