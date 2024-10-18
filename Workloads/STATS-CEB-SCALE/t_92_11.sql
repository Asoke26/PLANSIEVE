SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.PostTypeId = 4
AND u.Views >= 578
AND p.CreationDate <= 775

AND v.UserId = u.Id
AND p.OwnerUserId = u.Id;