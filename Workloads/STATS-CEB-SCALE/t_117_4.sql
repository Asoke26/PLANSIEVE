SELECT COUNT(*)
 FROM postHistory ph,
posts p,
votes v,
users u
WHERE p.PostTypeId = 4

AND u.Id = p.OwnerUserId
AND p.Id = ph.PostId
AND p.Id = v.PostId;