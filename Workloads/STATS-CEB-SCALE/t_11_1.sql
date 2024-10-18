SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 748
AND u.Reputation <= 3174
AND u.UpVotes <= 236
AND u.CreationDate >= 487
AND u.CreationDate <= 821

AND u.Id = c.UserId
AND c.UserId = ph.UserId;