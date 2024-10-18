SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE u.UpVotes >= 40
AND u.UpVotes <= 152
AND p.CreationDate >= 292
AND p.CreationDate <= 789

AND ph.PostId = p.Id
AND p.OwnerUserId = u.Id;