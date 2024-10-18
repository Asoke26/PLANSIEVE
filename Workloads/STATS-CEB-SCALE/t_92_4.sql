SELECT COUNT(*)
 FROM votes v,
posts p,
users u
WHERE p.PostTypeId = 6
AND u.Views >= 516
AND p.CreationDate <= 670

AND v.UserId = u.Id
AND p.OwnerUserId = u.Id;