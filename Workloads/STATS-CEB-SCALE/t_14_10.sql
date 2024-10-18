SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 22
AND u.UpVotes >= 325
AND c.CreationDate >= 648
AND b.Date >= 932
AND b.Date <= 1157

AND u.Id = c.UserId
AND c.UserId = b.UserId;