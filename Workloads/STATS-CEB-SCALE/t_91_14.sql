SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE u.UpVotes >= 343
AND u.UpVotes <= 1146
AND p.CreationDate >= 266
AND p.CreationDate <= 750

AND ph.PostId = p.Id
AND p.OwnerUserId = u.Id;