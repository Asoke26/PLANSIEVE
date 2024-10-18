SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.AnswerCount>=0
AND p.FavoriteCount>=0
AND p.CreationDate<=1534
AND u.CreationDate<=1543

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;