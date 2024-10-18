SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 1
AND v.VoteTypeId = 8
AND u.Reputation >= 809
AND c.CreationDate >= 941
AND v.CreationDate >= 929
AND v.CreationDate <= 982
AND b.Date <= 1365

AND u.Id = b.UserId
AND u.Id = c.UserId
AND u.Id = v.UserId;