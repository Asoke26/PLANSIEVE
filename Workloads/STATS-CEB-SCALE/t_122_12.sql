SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.AnswerCount >= 58.0
AND p.FavoriteCount >= 25.0
AND p.CreationDate <= 639
AND u.CreationDate <= 760

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;