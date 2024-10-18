SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 9
AND u.UpVotes >= 323
AND c.CreationDate >= 1009
AND b.Date >= 765
AND b.Date <= 1079

AND u.Id = c.UserId
AND c.UserId = b.UserId;