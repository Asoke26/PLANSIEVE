SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.Score >= -9
AND p.ViewCount >= 1281.0
AND p.ViewCount <= 4921.0
AND p.AnswerCount >= 0.0
AND p.CommentCount >= 8
AND p.CommentCount <= 9
AND p.FavoriteCount <= 89.0
AND u.Views >= 4
AND u.DownVotes >= 18
AND u.DownVotes <= 214
AND u.UpVotes >= 70
AND u.UpVotes <= 454
AND ph.CreationDate >= 69
AND ph.CreationDate <= 917
AND p.CreationDate >= 92
AND p.CreationDate <= 1302

AND u.Id = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = b.UserId;