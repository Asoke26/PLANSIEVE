SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE u.Reputation >= 193
AND u.Reputation <= 821
AND u.DownVotes >= 10
AND u.DownVotes <= 13
AND c.CreationDate <= 319
AND b.Date >= 766

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = c.UserId;