SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 295
AND u.Reputation <= 1645
AND u.UpVotes <= 16
AND u.CreationDate >= 289
AND u.CreationDate <= 528

AND u.Id = c.UserId
AND c.UserId = ph.UserId;