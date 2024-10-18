SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.Score >= -19
AND p.ViewCount >= 537.0
AND p.ViewCount <= 3739.0
AND p.AnswerCount >= 2.0
AND p.CommentCount >= 4
AND p.CommentCount <= 17
AND p.FavoriteCount <= 22.0
AND u.Views >= 393
AND u.DownVotes >= 6
AND u.DownVotes <= 36
AND u.UpVotes >= 94
AND u.UpVotes <= 408
AND ph.CreationDate >= 222
AND ph.CreationDate <= 447
AND p.CreationDate >= 578
AND p.CreationDate <= 847

AND u.Id = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = b.UserId;