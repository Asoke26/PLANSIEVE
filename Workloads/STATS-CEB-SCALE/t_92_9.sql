SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.PostTypeId = 2
AND u.Views >= 265
AND p.CreationDate <= 453

AND v.UserId = u.Id
AND p.OwnerUserId = u.Id;