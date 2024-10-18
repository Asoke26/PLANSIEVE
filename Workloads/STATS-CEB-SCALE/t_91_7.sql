SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE u.UpVotes >= 96
AND u.UpVotes <= 10523
AND p.CreationDate >= 248
AND p.CreationDate <= 843

AND ph.PostId = p.Id
AND p.OwnerUserId = u.Id;