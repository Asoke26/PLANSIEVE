SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE u.Reputation >= 909
AND u.Reputation <= 1285
AND u.DownVotes >= 18
AND u.DownVotes <= 44
AND c.CreationDate <= 192
AND b.Date >= 436

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = c.UserId;