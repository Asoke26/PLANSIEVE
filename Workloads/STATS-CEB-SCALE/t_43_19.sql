SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.Score >= 30
AND p.ViewCount >= 1065.0
AND p.ViewCount <= 3358.0
AND p.AnswerCount >= 2.0
AND p.CommentCount >= 3
AND p.CommentCount <= 8
AND p.FavoriteCount <= 37.0
AND u.Views >= 76

AND u.Id = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = b.UserId;