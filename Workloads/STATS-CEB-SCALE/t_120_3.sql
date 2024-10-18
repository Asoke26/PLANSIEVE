SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId = 6
AND p.AnswerCount <= 42.0
AND p.CommentCount >= 4
AND p.CommentCount <= 17
AND p.FavoriteCount >= 20.0
AND p.FavoriteCount <= 137.0
AND u.Reputation <= 237
AND ph.CreationDate >= 132
AND ph.CreationDate <= 1042
AND p.CreationDate <= 993
AND u.CreationDate >= 76
AND u.CreationDate <= 1089
AND b.Date >= 752
AND b.Date <= 1490

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;