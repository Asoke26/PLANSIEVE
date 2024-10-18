SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId = 13
AND p.AnswerCount <= 21.0
AND p.CommentCount >= 1
AND p.CommentCount <= 8
AND p.FavoriteCount >= 6.0
AND p.FavoriteCount <= 39.0
AND u.Reputation <= 1293
AND ph.CreationDate >= 334
AND ph.CreationDate <= 555
AND p.CreationDate <= 1036
AND u.CreationDate >= 132
AND u.CreationDate <= 411
AND b.Date >= 1033
AND b.Date <= 1489

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;