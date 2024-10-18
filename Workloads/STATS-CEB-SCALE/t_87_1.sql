SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 5
AND u.UpVotes >= 125
AND c.CreationDate >= 745
AND b.Date >= 856
AND b.Date <= 1504

AND c.UserId = u.Id
AND b.UserId = u.Id;