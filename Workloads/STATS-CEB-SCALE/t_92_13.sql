SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.PostTypeId = 4
AND u.Views >= 35
AND p.CreationDate <= 1534

AND v.UserId = u.Id
AND p.OwnerUserId = u.Id;