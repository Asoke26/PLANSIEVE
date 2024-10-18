SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.Score >= 81
AND u.Reputation >= 870
AND u.UpVotes <= 233
AND ph.CreationDate >= 1066
AND u.CreationDate >= 910

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;