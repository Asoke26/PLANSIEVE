SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE u.UpVotes >= 9
AND u.UpVotes <= 75
AND p.CreationDate >= 619
AND p.CreationDate <= 1152

AND ph.PostId = p.Id
AND p.OwnerUserId = u.Id;