SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.Score >= 49

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;