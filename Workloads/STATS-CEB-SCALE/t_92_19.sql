SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.PostTypeId = 6
AND u.Views >= 719
AND p.CreationDate <= 278

AND v.UserId = u.Id
AND p.OwnerUserId = u.Id;