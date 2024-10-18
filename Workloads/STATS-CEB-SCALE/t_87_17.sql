SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 26
AND u.UpVotes >= 53
AND c.CreationDate >= 126
AND b.Date >= 174
AND b.Date <= 1165

AND c.UserId = u.Id
AND b.UserId = u.Id;