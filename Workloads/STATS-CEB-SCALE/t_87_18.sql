SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 9
AND u.UpVotes >= 304
AND c.CreationDate >= 1417
AND b.Date >= 221
AND b.Date <= 1317

AND c.UserId = u.Id
AND b.UserId = u.Id;