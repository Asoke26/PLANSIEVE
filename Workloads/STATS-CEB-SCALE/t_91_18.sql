SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE u.UpVotes >= 6
AND u.UpVotes <= 242
AND p.CreationDate >= 826
AND p.CreationDate <= 1207

AND ph.PostId = p.Id
AND p.OwnerUserId = u.Id;