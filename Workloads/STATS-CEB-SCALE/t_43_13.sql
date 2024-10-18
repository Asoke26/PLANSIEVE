SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.Score >= 8
AND p.ViewCount >= 336.0
AND p.ViewCount <= 2228.0
AND p.AnswerCount >= 0.0
AND p.CommentCount >= 0
AND p.CommentCount <= 32
AND p.FavoriteCount <= 71.0
AND u.Views >= 433
AND u.DownVotes >= 19
AND u.DownVotes <= 41
AND u.UpVotes >= 96
AND u.UpVotes <= 2319
AND ph.CreationDate >= 42
AND ph.CreationDate <= 44
AND p.CreationDate >= 109
AND p.CreationDate <= 1514

AND u.Id = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = b.UserId;