SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 22
AND u.UpVotes >= 8641
AND c.CreationDate >= 601
AND b.Date >= 454
AND b.Date <= 1107

AND u.Id = c.UserId
AND c.UserId = b.UserId;