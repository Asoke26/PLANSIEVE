SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.Score >= 9
AND u.Reputation >= 354
AND u.UpVotes <= 27
AND ph.CreationDate >= 196
AND u.CreationDate >= 512

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;