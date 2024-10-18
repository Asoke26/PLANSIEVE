SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 0
AND u.UpVotes >= 41
AND c.CreationDate >= 688
AND b.Date >= 1098
AND b.Date <= 1120

AND c.UserId = u.Id
AND b.UserId = u.Id;