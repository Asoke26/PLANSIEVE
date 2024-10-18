SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 478
AND u.Reputation <= 1621
AND u.UpVotes <= 141
AND u.CreationDate >= 38
AND u.CreationDate <= 567

AND u.Id = c.UserId
AND c.UserId = ph.UserId;