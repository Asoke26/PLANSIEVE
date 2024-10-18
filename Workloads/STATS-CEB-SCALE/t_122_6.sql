SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.AnswerCount >= 1.0
AND p.FavoriteCount >= 82.0
AND p.CreationDate <= 306
AND u.CreationDate <= 389

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;