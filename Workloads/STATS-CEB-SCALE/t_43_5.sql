SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.Score >= 14
AND p.ViewCount >= 157.0
AND p.ViewCount <= 4045.0
AND p.AnswerCount >= 2.0
AND p.CommentCount >= 5
AND p.CommentCount <= 31
AND p.FavoriteCount <= 108.0
AND u.Views >= 263
AND u.DownVotes >= 8
AND u.DownVotes <= 143
AND u.UpVotes >= 6
AND u.UpVotes <= 101
AND ph.CreationDate >= 485
AND ph.CreationDate <= 1468
AND p.CreationDate >= 322
AND p.CreationDate <= 939

AND u.Id = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = b.UserId;