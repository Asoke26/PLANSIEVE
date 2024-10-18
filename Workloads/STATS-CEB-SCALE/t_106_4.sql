SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 16
AND v.VoteTypeId = 5
AND u.Reputation >= 1097
AND c.CreationDate >= 151
AND v.CreationDate >= 114
AND v.CreationDate <= 1055
AND b.Date <= 472

AND u.Id = b.UserId
AND u.Id = c.UserId
AND u.Id = v.UserId;