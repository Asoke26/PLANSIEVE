SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 105
AND u.Reputation <= 330
AND u.UpVotes <= 323
AND u.CreationDate >= 564
AND u.CreationDate <= 678

AND u.Id = c.UserId
AND c.UserId = ph.UserId;