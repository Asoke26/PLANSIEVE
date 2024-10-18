SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.AnswerCount >= 5.0
AND p.FavoriteCount >= 9.0
AND p.CreationDate <= 323
AND u.CreationDate <= 170

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;