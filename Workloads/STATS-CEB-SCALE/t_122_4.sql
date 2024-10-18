SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.AnswerCount >= 28.0
AND p.FavoriteCount >= 28.0
AND p.CreationDate <= 478
AND u.CreationDate <= 172

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;