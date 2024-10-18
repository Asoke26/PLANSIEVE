SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.Score >= -7
AND p.ViewCount >= 698.0
AND p.ViewCount <= 2299.0
AND p.AnswerCount >= 0.0
AND p.CommentCount >= 4
AND p.CommentCount <= 28
AND p.FavoriteCount <= 42.0
AND u.Views >= 24

AND u.Id = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = b.UserId;