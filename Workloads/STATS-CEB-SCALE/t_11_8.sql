SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 406
AND u.Reputation <= 87393
AND u.UpVotes <= 44
AND u.CreationDate >= 440
AND u.CreationDate <= 1001

AND u.Id = c.UserId
AND c.UserId = ph.UserId;