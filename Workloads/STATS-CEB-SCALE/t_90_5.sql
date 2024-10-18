SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.Score >= 24
AND u.Reputation >= 802
AND u.UpVotes <= 29
AND ph.CreationDate >= 1212
AND u.CreationDate >= 464

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;