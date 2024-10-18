SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 26
AND u.UpVotes >= 66
AND c.CreationDate >= 824
AND b.Date >= 826
AND b.Date <= 964

AND c.UserId = u.Id
AND b.UserId = u.Id;