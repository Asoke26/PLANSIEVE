SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.Score >= 2
AND p.ViewCount >= 1036.0
AND p.ViewCount <= 15372.0
AND p.AnswerCount >= 14.0
AND p.CommentCount >= 2
AND p.CommentCount <= 24
AND p.FavoriteCount <= 29.0
AND u.Views >= 467
AND u.DownVotes >= 14
AND u.DownVotes <= 200
AND u.UpVotes >= 598
AND u.UpVotes <= 5007
AND ph.CreationDate >= 96
AND ph.CreationDate <= 1169
AND p.CreationDate >= 523
AND p.CreationDate <= 1450

AND u.Id = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = b.UserId;