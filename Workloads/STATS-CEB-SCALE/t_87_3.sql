SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 12
AND u.UpVotes >= 192
AND c.CreationDate >= 1173
AND b.Date >= 258
AND b.Date <= 972

AND c.UserId = u.Id
AND b.UserId = u.Id;