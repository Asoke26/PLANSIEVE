SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 11
AND u.UpVotes >= 104
AND c.CreationDate >= 1008
AND b.Date >= 734
AND b.Date <= 1132

AND c.UserId = u.Id
AND b.UserId = u.Id;