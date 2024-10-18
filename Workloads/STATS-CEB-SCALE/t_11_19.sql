SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 6
AND u.Reputation <= 9429
AND u.UpVotes <= 189
AND u.CreationDate >= 765
AND u.CreationDate <= 1431

AND u.Id = c.UserId
AND c.UserId = ph.UserId;