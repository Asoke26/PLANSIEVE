SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.Score >= 105
AND u.Reputation >= 881
AND u.UpVotes <= 2156
AND ph.CreationDate >= 332
AND u.CreationDate >= 457

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;