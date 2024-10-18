SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.Score >= -5
AND p.ViewCount >= 1688.0
AND p.ViewCount <= 3695.0
AND p.AnswerCount >= 2.0
AND p.CommentCount >= 2
AND p.CommentCount <= 26
AND p.FavoriteCount <= 66.0
AND u.Views >= 228
AND u.DownVotes >= 3
AND u.DownVotes <= 36
AND u.UpVotes >= 144
AND u.UpVotes <= 475
AND ph.CreationDate >= 1195
AND ph.CreationDate <= 1482
AND p.CreationDate >= 172
AND p.CreationDate <= 1273

AND u.Id = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = b.UserId;