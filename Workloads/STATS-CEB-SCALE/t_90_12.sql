SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.Score >= 70
AND u.Reputation >= 487
AND u.UpVotes <= 111
AND ph.CreationDate >= 105
AND u.CreationDate >= 1056

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;