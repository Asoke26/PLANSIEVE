SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.Score >= 4
AND p.ViewCount >= 1280.0
AND p.ViewCount <= 1860.0
AND p.AnswerCount >= 1.0
AND p.CommentCount >= 1
AND p.CommentCount <= 12
AND p.FavoriteCount <= 65.0
AND u.Views >= 1319
AND u.DownVotes >= 9
AND u.DownVotes <= 131
AND u.UpVotes >= 60
AND u.UpVotes <= 910
AND ph.CreationDate >= 402
AND ph.CreationDate <= 1283
AND p.CreationDate >= 759
AND p.CreationDate <= 937

AND u.Id = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = b.UserId;