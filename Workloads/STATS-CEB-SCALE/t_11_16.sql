SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 441
AND u.Reputation <= 1796
AND u.UpVotes <= 63
AND u.CreationDate >= 1240
AND u.CreationDate <= 1541

AND u.Id = c.UserId
AND c.UserId = ph.UserId;