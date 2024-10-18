SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE u.UpVotes >= 24
AND u.UpVotes <= 144
AND p.CreationDate >= 807
AND p.CreationDate <= 937

AND ph.PostId = p.Id
AND p.OwnerUserId = u.Id;