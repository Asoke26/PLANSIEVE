SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.Score >= 71
AND u.Reputation >= 406
AND u.UpVotes <= 156
AND ph.CreationDate >= 287
AND u.CreationDate >= 1148

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;