SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 18
AND u.UpVotes >= 394
AND c.CreationDate >= 568
AND b.Date >= 183
AND b.Date <= 652

AND c.UserId = u.Id
AND b.UserId = u.Id;