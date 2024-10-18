SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 293
AND u.Reputation <= 501
AND u.UpVotes <= 47
AND u.CreationDate >= 1230
AND u.CreationDate <= 1540

AND u.Id = c.UserId
AND c.UserId = ph.UserId;