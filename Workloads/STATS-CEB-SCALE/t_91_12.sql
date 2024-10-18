SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE u.UpVotes >= 857
AND u.UpVotes <= 1264
AND p.CreationDate >= 563
AND p.CreationDate <= 1118

AND ph.PostId = p.Id
AND p.OwnerUserId = u.Id;