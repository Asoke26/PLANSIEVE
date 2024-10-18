SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.Score >= 5
AND p.ViewCount >= 878.0
AND p.ViewCount <= 3769.0
AND p.AnswerCount >= 0.0
AND p.CommentCount >= 6
AND p.CommentCount <= 27
AND p.FavoriteCount <= 55.0
AND u.Views >= 266
AND u.DownVotes >= 4
AND u.DownVotes <= 18
AND u.UpVotes >= 141
AND u.UpVotes <= 1160
AND ph.CreationDate >= 657
AND ph.CreationDate <= 1300
AND p.CreationDate >= 746
AND p.CreationDate <= 978

AND u.Id = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = b.UserId;