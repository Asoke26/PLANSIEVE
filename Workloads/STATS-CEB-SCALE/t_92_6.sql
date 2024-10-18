SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.PostTypeId = 4
AND u.Views >= 627
AND p.CreationDate <= 1290

AND v.UserId = u.Id
AND p.OwnerUserId = u.Id;