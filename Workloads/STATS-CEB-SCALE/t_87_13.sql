SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 16
AND u.UpVotes >= 152
AND c.CreationDate >= 479
AND b.Date >= 422
AND b.Date <= 587

AND c.UserId = u.Id
AND b.UserId = u.Id;