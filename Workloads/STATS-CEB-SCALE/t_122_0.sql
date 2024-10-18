SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.AnswerCount >= 28.0
AND p.FavoriteCount >= 42.0
AND p.CreationDate <= 395
AND u.CreationDate <= 781

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;