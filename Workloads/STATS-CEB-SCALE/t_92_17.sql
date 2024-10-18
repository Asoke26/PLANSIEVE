SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.PostTypeId = 2
AND u.Views >= 75
AND p.CreationDate <= 165

AND v.UserId = u.Id
AND p.OwnerUserId = u.Id;