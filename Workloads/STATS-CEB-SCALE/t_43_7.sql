SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.Score >= -8
AND p.ViewCount >= 1494.0
AND p.ViewCount <= 3146.0
AND p.AnswerCount >= 0.0
AND p.CommentCount >= 0
AND p.CommentCount <= 5
AND p.FavoriteCount <= 5.0
AND u.Views >= 186
AND u.DownVotes >= 5
AND u.DownVotes <= 16
AND u.UpVotes >= 41
AND u.UpVotes <= 107
AND ph.CreationDate >= 524
AND ph.CreationDate <= 599
AND p.CreationDate >= 139
AND p.CreationDate <= 948

AND u.Id = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = b.UserId;