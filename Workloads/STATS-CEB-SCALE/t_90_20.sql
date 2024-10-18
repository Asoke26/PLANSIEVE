SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.Score >= 57
AND u.Reputation >= 257
AND u.UpVotes <= 123
AND ph.CreationDate >= 526
AND u.CreationDate >= 544

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;